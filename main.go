package main

import (
	"os"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/controllers"
	"github.com/oneaushaf/go-bird/repositories"
	"github.com/oneaushaf/go-bird/services"
)

func init(){
	repositories.ConnectDatabase()
	repositories.SyncDatabase()
	services.LoadEnv()
}

func main() {
	r := gin.Default()

	r.POST("/signup",controllers.Signup)
	r.POST("/login",controllers.Login)

	r.POST("/predictions",controllers.Predict)

	r.POST("/models/train/new",controllers.TrainNewModel)
	r.POST("/models/train/based/:model",controllers.TrainNewModel)
	r.POST("/models/train/done",controllers.TrainingDone)
	r.POST("/models/train/accept",controllers.AcceptModel)
	r.GET("/models/:name")
	// r.POST("/models",controllers.CreateModel)
	// r.POST("/models/train/based",controllers.CreateBaseModel)

	r.GET("/users")
	r.GET("/users/:user_id")
	r.GET("/users/:user_id/predictions")

	r.GET("/predictions")
	
	
	
	r.POST("/species")
	r.GET("/species")
	r.POST("/species/:species_id/images")
	r.GET("/species/:species_id/images")

	port := os.Getenv("PORT")
	r.Run(":"+port)
}
