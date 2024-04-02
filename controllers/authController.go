package controllers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/models"
	"github.com/oneaushaf/go-bird/repositories"
	"github.com/oneaushaf/go-bird/services"
	"golang.org/x/crypto/bcrypt"
)

func Signup(c *gin.Context) {
	user := models.User{}
	if err := c.Bind(&user); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "validation error",
			"error":   err.Error(),
		})
		return
	}

	check, err := services.CheckExistence(user.Email, user.Username)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "internal server error",
			"error":   err.Error(),
		})
		return
	} else if check {
		c.JSON(http.StatusConflict, gin.H{
			"message": "username or email already used",
		})
	}

	hash, _ := bcrypt.GenerateFromPassword([]byte(user.Password), 10)
	user.Password = string(hash)
	err = repositories.CreateUser(&user)

	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "internal server error",
			"error":   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "signup completed successfuly",
	})
}

func Login(c *gin.Context) {
	var body struct {
		Identifier string `binding:"required"`
		Password   string `binding:"required"`
	}

	if err := c.Bind(&body); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "validation error",
			"error": err.Error(),
		})
		return
	}

	user, err := services.CheckCredentials(body.Identifier, body.Password)

	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message":err.Error(),
			"error": err.Error(),
		})
		return
	}

	tokenString, err := services.GenerateTokens(user)

	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "Failed to create token",
			"error":   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"token": tokenString,
	})
}
