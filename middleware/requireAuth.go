package middleware

import (
	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/helpers"
	"net/http"
)

func ReuqireAuth(c *gin.Context) {
	tokenString := c.GetHeader("token")
	if tokenString == "" {
		c.AbortWithStatusJSON(http.StatusUnauthorized, gin.H{
			"error": "no authorization token detected",
		})
		return
	}

	claims, err := helpers.ValidateToken(tokenString)

	if err != nil {
		c.AbortWithStatusJSON(http.StatusUnauthorized,gin.H{
			"error" : "invalid token",
		})
		return
	}

	c.Set("user_id", claims.UserID)
	c.Set("user_type", claims.UserType)
	c.Next()
}
