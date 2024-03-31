package main

import (
	"os"

	"github.com/gin-gonic/gin"
)

func init(){
	
}

func main() {
	r := gin.Default()

	port := os.Getenv("PORT")
	r.Run(":"+port)
}
