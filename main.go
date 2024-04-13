package main

import (
	"os"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/controllers"
	"github.com/oneaushaf/go-bird/middleware"
	"github.com/oneaushaf/go-bird/repositories"
	"github.com/oneaushaf/go-bird/seeders"
	"github.com/oneaushaf/go-bird/services"
)

func init(){
	services.LoadEnv()
	repositories.ConnectDatabase()
	repositories.SyncDatabase()
}

func main() {
	r := gin.Default()

	r.POST("/signup",controllers.Signup) //signup
	r.POST("/login",controllers.Login) //login

	r.POST("/predictions",middleware.ReuqireAuth,controllers.Predict) //make prediction with latest model
	r.POST("/predictions/:model",middleware.ReuqireAuth,controllers.Predict) //make prediction with specified model
	r.GET("/predictions") //get all the prediction data

	r.GET("/users") //get all the users data
	r.GET("/users/:user_id") //get a user's data 
	r.GET("/users/:user_id/predictions") //get all the prediction made by a user

	r.POST("/models/train/new",middleware.ReuqireAuth,middleware.ReuqireAdmin,controllers.TrainNewModel) //make a new model with no base model
	r.POST("/models/train/based/:model",middleware.ReuqireAuth,middleware.ReuqireAdmin,controllers.TrainBasedModel) //make a new model with base model
	r.POST("/models/train/done",controllers.TrainingDone) //(**is not used by client**) to notify train in finished
	r.POST("/models/train/accept",middleware.ReuqireAuth,middleware.ReuqireAdmin,controllers.AcceptModel) //accept the model that has just been trained
	r.POST("/models/train/decline",middleware.ReuqireAuth,middleware.ReuqireAdmin,controllers.DeclineModel) //decline the model that has just been trained
	r.GET("/models/:name",middleware.ReuqireAuth,middleware.ReuqireAdmin,controllers.GetModel) //get the model data (name, date, report, etc)
	r.GET("/models",middleware.ReuqireAuth,middleware.ReuqireAdmin,controllers.GetModels) //get the list of all the models saved 

	r.POST("/species",middleware.ReuqireAuth,controllers.CreateSpecies) //add a new species to be listed on the system
	r.GET("/species",middleware.ReuqireAuth,controllers.GetSpecies) //get the list of all species saved 
	r.POST("/species/:species_id/images",middleware.ReuqireAuth,controllers.AddImagetoSpecies) //add images to the specified species dataset
	r.GET("/species/:species_id/images") //get images from the specified species dataset

	r.POST("/seed",seeders.Run)

	port := os.Getenv("PORT")
	r.Run(":"+port)
}
