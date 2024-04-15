package middleware

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
)

func ReuqireSign(c *gin.Context) {
	id, _ := strconv.Atoi(c.Param("user_id"))
	UserID, check1 := c.Get("user_id")
	UserType, check2 := c.Get("user_type")
	if !check1 || !check2 {
		c.AbortWithStatusJSON(http.StatusUnauthorized, gin.H{
			"error": "invalid token",
		})
		return
	}
	if (UserID != uint(id)) && (UserType != "admin") {
		c.AbortWithStatusJSON(http.StatusUnauthorized, gin.H{
			"error":  "unauthorized access",
		})
		return
	}

	c.Next()
}
