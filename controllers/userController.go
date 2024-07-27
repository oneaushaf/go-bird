package controllers

import (
	"net/http"
	"strconv"

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

	check, err := services.CheckExistence(user.Email, user.Username, user.Phone)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "internal server error",
			"error":   err.Error(),
		})
		return
	} else if check {
		c.JSON(http.StatusConflict, gin.H{
			"message": "username or email or phone number already used",
		})
		return
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

func GetUser(c *gin.Context){
	id := c.Param("user_id")
	if id==""{
		c.JSON(http.StatusBadRequest,gin.H{
			"message":"invalid request",
		})
	}
	i,err := strconv.Atoi(id)
	if err!=nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"fail to parse id",
			"error":err.Error(),
		})
	}
	user,err := repositories.GetUserByID(uint(i))
	if err!=nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"fail to get user from repository",
			"error":err.Error(),
		})
	}
	c.JSON(http.StatusOK,user)
}
func GetAuth(c *gin.Context){
	id,ok := c.Get("user_id")
	if !ok{
		c.JSON(http.StatusBadRequest,gin.H{
			"message":"invalid request",
		})
	}
	
	user:= models.User{} 
	err := repositories.DB.First(&user,"id=?",id).Error
	if err!=nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"fail to get user from repository",
			"error":err.Error(),
		})
	}
	c.JSON(http.StatusOK,user)
}

func GetUsers(c *gin.Context){
	users,err := repositories.GetUsers()
	if err!=nil{
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"fail to get users from repository",
			"error":err.Error(),
		})
	}
	c.JSON(http.StatusOK,users)
}
