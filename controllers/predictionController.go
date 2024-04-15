package controllers

import (
	"net/http"
	"os"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/models"
	"github.com/oneaushaf/go-bird/repositories"
	"github.com/oneaushaf/go-bird/services"
)

func Predict(c *gin.Context) {
	model := c.Param("model")
	if model == "" {
		model = "latest"
	}

	m := models.Model{}
	d := repositories.DB.First(&m, "name=?", model)
	if d.Error != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to get model",
			"error":   d.Error.Error(),
		})
		return
	} else if d.RowsAffected == 0 {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "no model with the specified name found",
		})
		return
	}

	file, err := c.FormFile("image")
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "invalid request",
			"error":   err.Error(),
		})
		return
	}
	if services.IsImage(file) {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "invalid file type",
		})
		return
	}

	filePath := os.Getenv("PREDICTION_STORAGE") + "/unclassified/" + file.Filename

	if err := c.SaveUploadedFile(file, filePath); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to upload image",
			"error":   err.Error(),
		})
		return
	}

	result, err := services.SendImageToAPI(os.Getenv("PREDICTION_SERVICE_URL")+"/predict", filePath, gin.H{
		"version": model,
	})

	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to use prediction service",
			"error":   err.Error(),
		})
		return
	}

	classified, err := services.ClassifyImage(file.Filename, filePath, result)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to classify",
			"error":   err.Error(),
		})
		return
	}
	if classified == nil {
		result["result"] = "unable to classify"
	}

	repositories.CreatePrediction(&models.Predcition{
		UserID:     1,
		ModelID:    m.ID,
		Result:     result["result"].(string),
		Confidence: result["confidence"].(map[string]interface{})[result["result"].(string)].(float64),
		Image:      *classified,
	})
	c.JSON(http.StatusOK, result)
}

func GetPredictionByUser(c *gin.Context){
	id := c.Param("user_id")
	if id==""{
		c.JSON(http.StatusBadRequest,gin.H{
			"message":"invalid request",
		})
	}
	user := models.User{}
	if err:=repositories.DB.Preload("Predictions").First(&user, "id=?",id).Error;err!=nil{
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"fail to retrieve user",
			"error":err.Error(),
		})
	}
	c.JSON(http.StatusOK,user.Predictions)
}

func GetPredictions(c *gin.Context){
	predictions,err := repositories.GetPredictions()
	if err!=nil{
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"fail to get predictions from repository",
			"error":err.Error(),
		})
	}
	c.JSON(http.StatusOK,predictions)
}
