package controllers

import (
	"net/http"
	"os"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/services"
)

func Predict(c *gin.Context){
	model := c.PostForm("model")
	if model == "" {
		model = "latest"
	}
	file,err := c.FormFile("image")
	if err!= nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message" : "invalid request",
			"error":err.Error(),
		})
		return
	}
	if services.IsImage(file){
		c.JSON(http.StatusBadRequest,gin.H{
			"message" : "invalid file type",
		})
		return
	}

	filePath := os.Getenv("PREDICTION_STORAGE") + file.Filename

	if err := c.SaveUploadedFile(file,filePath); err != nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"failed to upload image",
			"error":err.Error(),
		})
		return
	}

	result,err:= services.SendImageToAPI( os.Getenv("PREDICTION_SERVICE_URL")+"/predict",filePath,gin.H{
		"model_version":"240403",
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"failed to use prediction service",
			"error":err.Error(),
		})
		return
	}
	c.JSON(http.StatusOK,result)
}