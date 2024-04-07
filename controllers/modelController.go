package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/models"
	"github.com/oneaushaf/go-bird/repositories"
)

func CreateModel(c *gin.Context){
	model := models.Model{}
	if err := c.Bind(&model); err!= nil {
		c.JSON(http.StatusBadRequest,gin.H{
			"message":"validation error",
			"error":err.Error(),
		})
		return
	}
	if err := repositories.CreateModel(&model);err!= nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message" : "fail to create model",
			"error" : err.Error(),
		})
		return
	}
}