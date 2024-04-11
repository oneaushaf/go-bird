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

	r.POST("/signup",controllers.Signup) //signup
	r.POST("/login",controllers.Login) //login

	r.POST("/predictions",controllers.Predict) //make prediction with latest model
	r.POST("/predictions/:model",controllers.Predict) //make prediction with specified model
	r.GET("/predictions") //get all the prediction data

	r.GET("/users") //get all the users data
	r.GET("/users/:user_id") //get a user's data 
	r.GET("/users/:user_id/predictions") //get all the prediction made by a user

	r.POST("/models/train/new",controllers.TrainNewModel) //make a new model with no base model
	r.POST("/models/train/based/:model",controllers.TrainBasedModel) //make a new model with base model
	r.POST("/models/train/done",controllers.TrainingDone) //(**is not used by client**) to notify train in finished
	r.POST("/models/train/accept",controllers.AcceptModel) //accept the model that has just been trained
	r.POST("/models/train/decline",controllers.DeclineModel) //decline the model that has just been trained
	r.GET("/models/:name",controllers.GetModel) //get the model data (name, date, report, etc)
	r.GET("/models",controllers.GetModels) //get the list of all the models saved 

	r.POST("/species") //add a new species to be listed on the system
	r.GET("/species") //get the list of all species saved 
	r.POST("/species/:species_id/images") //add images to the specified species dataset
	r.GET("/species/:species_id/images") //get images from the specified species dataset

	port := os.Getenv("PORT")
	r.Run(":"+port)
}
