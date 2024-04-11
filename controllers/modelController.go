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

func TrainNewModel(c *gin.Context) {
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

	c.JSON(http.StatusOK, result)
}


func TrainBasedModel(c *gin.Context) {
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
	}

	body := Request{}
	body.Patience = 10
	body.Epochs = 100

	BaseModel := c.Param("model")

	if err := c.Bind(&body); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "invalid request",
			"error":   err.Error(),
		})
		return
	}

	result, err := services.SendRequestToAPI(os.Getenv("PREDICTION_SERVICE_URL")+"/train/new", gin.H{
		"patience":   body.Patience,
		"base_model": BaseModel,
		"epochs":     body.Epochs,
	})

	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "failed to train model",
			"error":   err.Error(),
		})
		return
	}

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
		reportData, err := json.Marshal(data.Data)
		if err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{
				"message": "failed to marshal request body",
				"error":   err.Error(),
			})
			return
		}
		model := models.Model{
			Name:   "temp",
			Report: datatypes.JSON(reportData),
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
}

func AcceptModel(c *gin.Context) {
	tempDir := os.Getenv("MODEL_STORAGE") + "/temp"
	latestDir := os.Getenv("MODEL_STORAGE") + "/latest"

	if _, err := os.Stat(tempDir); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "there's no model to accept",
			"error":   err.Error(),
		})
		return
	}
	if check,err:=repositories.ExistsModel("name","temp");err!=nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to check database",
			"error":   err.Error(),
		})
		return
	} else if check{
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "model is not listed in database",
			"error":   err.Error(),
		})
		return
	}
	
	today := time.Now().Format("060102")
	newLatestDir := os.Getenv("MODEL_STORAGE") + "/" + today
	if err := os.Rename(latestDir, newLatestDir); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to rename latest",
			"error":   err.Error(),
		})
		return
	}
	newTempDir := os.Getenv("MODEL_STORAGE") + "/latest"
	if err := os.Rename(tempDir, newTempDir); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to rename temp",
			"error":   err.Error(),
		})
		return
	}
	if err := repositories.UpdateModelName("latest", today); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to rename temp in db",
			"error":   err.Error(),
		})
		return
	}
	if err := repositories.UpdateModelName("temp", "latest"); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to rename temp in db",
			"error":   err.Error(),
		})
		return
	}
	c.JSON(http.StatusOK, gin.H{
		"message": "model accepted",
	})
}

func DeclineModel(c *gin.Context){
	tempDir := os.Getenv("MODEL_STORAGE") + "/temp"

	if _, err := os.Stat(tempDir); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "there's no model to accept",
			"error":   err.Error(),
		})
		return
	}
	if check,err:=repositories.ExistsModel("name","temp");err!=nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to check database",
			"error":   err.Error(),
		})
		return
	} else if check{
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "model is not listed in database",
			"error":   err.Error(),
		})
		return
	}
	if err := repositories.DeleteModelByName("temp");err!=nil{
		c.JSON(http.StatusInternalServerError,gin.H{
			"message": "failed to delete from database",
			"error":   err.Error(),
		})
		return
	}
	if err := services.RemoveDir(tempDir);err!=nil{
		c.JSON(http.StatusInternalServerError,gin.H{
			"message": "failed to delete model",
			"error":   err.Error(),
		})
		return
	}
	c.JSON(http.StatusOK,gin.H{})
}

func GetModels(c *gin.Context){
	users,err := repositories.GetAllModels()
	if err!=nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"fail to get models from repository",
			"error":err.Error(),
		})
	}
	result := models.ModelScheme(users)
	c.JSON(http.StatusOK,result)
}

func GetModel(c *gin.Context){
	name := c.Param("name")
	if name==""{
		c.JSON(http.StatusBadRequest,gin.H{
			"message":"invalid request",
		})
	}
	user,err := repositories.GetModelByName(name)
	if err!=nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"fail to get models from repository",
			"error":err.Error(),
		})
	}
	c.JSON(http.StatusOK,user)
}
