package controllers

import (
	"encoding/json"
	"fmt"
	"net/http"
	"os"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/models"
	"github.com/oneaushaf/go-bird/repositories"
	"github.com/oneaushaf/go-bird/services"
	"gorm.io/datatypes"
)

var isTraining bool = false

func CheckTraining(c *gin.Context) {
	respond := gin.H{
		"training": isTraining,
	}
	if isTraining {
		respond["message"] = "there is a model being trained"
	} else {
		respond["message"] = "the training endpoint is free to use"
	}
	c.JSON(http.StatusOK, respond)
}

func TrainNewModel(c *gin.Context) {
	if isTraining {
		c.JSON(http.StatusOK, gin.H{
			"message": "a training is in progress, please wait untul the training is finished",
		})
		return
	}

	check, err := repositories.ExistsModel("name", "temp")
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "internal server error",
			"error":   err.Error(),
		})
		return
	}
	if check {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "there's an unverified trained model, please verify first",
		})
		return
	}

	type Request struct {
		Patience int
		Layers   int
		Epochs   int
	}

	body := Request{}

	body.Patience = 10
	body.Layers = 64
	body.Epochs = 100

	if err := c.Bind(&body); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "invalid request",
			"error":   err.Error(),
		})
		return
	}

	result, err := services.SendRequestToAPI(os.Getenv("PREDICTION_SERVICE_URL")+"/train/new", gin.H{
		"patience": body.Patience,
		"layers":   body.Layers,
		"epochs":   body.Epochs,
	})

	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "failed to train model",
			// "error":   err.Error(),
		})
		return
	}

	isTraining = true

	c.JSON(http.StatusOK, result)
}

func TrainBasedModel(c *gin.Context) {
	if isTraining {
		c.JSON(http.StatusOK, gin.H{
			"message": "a training is in progress, please wait untul the training is finished",
		})
		return
	}
	check, err := repositories.ExistsModel("name", "temp")
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "internal server error",
			"error":   err.Error(),
		})
		return
	}
	if check {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "there's an unverified trained model, please verify first",
		})
		return
	}

	type Request struct {
		Patience int
		Epochs   int
		Model    string
	}

	body := Request{}
	body.Patience = 10
	body.Epochs = 100
	body.Model = ""


	if err := c.Bind(&body); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "invalid request",
			"error":   err.Error(),
		})
		return
	}

	if body.Model==""{
		model,_ := repositories.GetUsedModel()
		body.Model = model.Name
	}

	species, err := repositories.GetAllSpecies("untrained>0")
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to get species",
			"error":   err.Error(),
		})
		return
	} else if species == nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "no new images to train with",
		})
		return
	}

	result, err := services.SendRequestToAPI(os.Getenv("PREDICTION_SERVICE_URL")+"/train/based", gin.H{
		"patience":   body.Patience,
		"base_model": body.Model,
		"epochs":     body.Epochs,
	})

	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "failed to train model",
			"error":   err.Error(),
		})
		return
	}

	isTraining = true

	c.JSON(http.StatusOK, result)
}

func TrainingDone(c *gin.Context) {
	data := models.Request{}

	if err := c.Bind(&data); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "invalid request",
			"error":   err.Error(),
		})
		fmt.Println(err.Error())
		return
	}

	if data.Success {
		reportData, err := json.Marshal(data)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{
				"message": "failed to marshal request body",
				"error":   err.Error(),
			})
			return
		}
		testData, err := json.Marshal(data.Test)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{
				"message": "failed to marshal request body",
				"error":   err.Error(),
			})
			return
		}
		model := models.Model{
			Name:       "temp",
			Report:     datatypes.JSON(reportData),
			TestResult: datatypes.JSON(testData),
		}
		err = repositories.CreateModel(&model)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{
				"message": "failed to create model",
				"error":   err.Error(),
			})
			return
		}
	}
	isTraining = false
}

func AcceptModel(c *gin.Context) {
	tempDir := os.Getenv("MODEL_STORAGE") + "/temp"

	if _, err := os.Stat(tempDir); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "there's no model to accept",
			"error":   err.Error(),
		})
		return
	}

	model, err := repositories.GetModelByName("temp")
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "there's no model to accept",
			"error":   err.Error(),
		})
		return
	}
	latestModel, err := repositories.GetUsedModel()
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "there's no model used",
			"error":   err.Error(),
		})
		return
	}

	today := time.Now().Format("060102")
	minute := time.Now().Hour()*60 + time.Now().Minute()
	dir := fmt.Sprintf("%s-%04d", today, minute)

	newLatestDir := os.Getenv("MODEL_STORAGE") + "/" + dir
	if err := os.Rename(tempDir, newLatestDir); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to rename latest",
			"error":   err.Error(),
		})
		return
	}

	model.Name = dir
	model.IsUsed = true

	latestModel.IsUsed = false

	if err := repositories.DB.Save(latestModel).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to save used in db",
			"error":   err.Error(),
		})
		return
	}
	if err := repositories.DB.Save(model).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to save temp in db",
			"error":   err.Error(),
		})
		return
	}

	if err := repositories.UpdateModelName("temp", dir); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to rename temp in db",
			"error":   err.Error(),
		})
		return
	}

	species, err := repositories.GetAllSpecies("untrained>0")
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "no untrained data",
			"error":   err.Error(),
		})
		return
	}
	for _, v := range species {
		v.Untrained = 0
		if err := repositories.DB.Save(&v).Error; err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{
				"message": "failed to save model",
				"error":   err.Error(),
			})
			return
		}
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "model accepted",
	})
	result := repositories.DB.Model(&models.TrainingImage{}).Where("is_trained = ?", false).Update("is_trained", true)
	if result.Error != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to save model",
			"error":   result.Error.Error(),
		})
		return
	}
}


func DeclineModel(c *gin.Context) {
	tempDir := os.Getenv("MODEL_STORAGE") + "/temp"

	if _, err := os.Stat(tempDir); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "there's no model to declined",
			"error":   err.Error(),
		})
		return
	}
	if check, err := repositories.ExistsModel("name", "temp"); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to check database",
			"error":   err.Error(),
		})
		return
	} else if !check {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "model is not listed in database",
		})
		return
	}
	if err := repositories.DeleteModelByName("temp"); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to delete from database",
			"error":   err.Error(),
		})
		return
	}
	if err := services.RemoveDir(tempDir); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to delete model",
			"error":   err.Error(),
		})
		return
	}
	c.JSON(http.StatusOK, gin.H{})
}

func GetModels(c *gin.Context) {
	users, err := repositories.GetAllModels()
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "fail to get models from repository",
			"error":   err.Error(),
		})
	}
	result := models.ModelScheme(users)
	c.JSON(http.StatusOK, result)
}

func GetModel(c *gin.Context) {
	name := c.Param("name")
	if name == "" {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "invalid request",
		})
	}
	user, err := repositories.GetModelByName(name)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "fail to get models from repository",
			"error":   err.Error(),
		})
	}
	c.JSON(http.StatusOK, user)
}
