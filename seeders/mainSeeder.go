package seeders

import (
	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/repositories"
	"github.com/oneaushaf/go-bird/services"
)

func init() {
	services.LoadEnv()
	repositories.ConnectDatabase()
	initModel()
	initSpecies()
	initUsers()
}

func Run(c *gin.Context){
	repositories.Seed(&model)
	repositories.Seed(&species)
	repositories.Seed(&users)
}