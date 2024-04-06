package controllers

import (
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/services"
)

func Predict(c *gin.Context){
	file,err := c.FormFile("image")
	if err!= nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message" : "invalid request",
			"error":err.Error(),
		})
		return
	}
	if!strings.HasPrefix(file.Header.Get("Content-Type"),"image/"){
		c.JSON(http.StatusBadRequest,gin.H{
			"message" : "invalid file type",
		})
		return
	}
	filePath := "../dataset/prediction/" + file.Filename
	if err := c.SaveUploadedFile(file,filePath); err != nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"failed to upload image",
			"error":err.Error(),
		})
		return
	}
	result,err:= services.SendImageToAPI("http://127.0.0.1:8000/predict",filePath,gin.H{
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