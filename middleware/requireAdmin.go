package middleware

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func ReuqireAdmin(c *gin.Context) {

	UserType,check := c.Get("user_type")
	if !check {
		c.AbortWithStatusJSON(http.StatusUnauthorized,gin.H{
			"error" : "invalid token",
		})
		return
	}
	if UserType!= "admin" {
		c.AbortWithStatusJSON(http.StatusUnauthorized,gin.H{
			"error" : "invalid user type",
			"used" : UserType,
			"required" : "admin",
		})
		return
	}

	c.Next()
}