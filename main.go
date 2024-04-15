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

func init() {
	services.LoadEnv()
	repositories.ConnectDatabase()
	repositories.SyncDatabase()
}

func main() {
	r := gin.Default()

	r.POST("/signup", controllers.Signup)                  //signup
	r.POST("/login", controllers.Login)                    //login
	r.POST("/models/train/done", controllers.TrainingDone) //(**is not used by client**) to notify train in finished
	r.POST("/seed", seeders.Run)                           //will be deleted if i found a new way to seed db

	userRoute := r.Group("/", middleware.ReuqireAuth)
	userRoute.POST("/predictions", controllers.Predict)                                                   //make prediction with latest model
	userRoute.GET("/species", controllers.GetSpecies)                                                     //get the list of all species saved
	userRoute.GET("/species/:species_id/images", controllers.GetSpeciesImages)                            //get list of images from the specified species dataset
	userRoute.GET("/species/:species_id/images/*file", controllers.GetSpeciesImage)                       //get the image
	userRoute.GET("/users/:user_id", middleware.ReuqireSign, controllers.GetUser)                         //get a user's data
	userRoute.GET("/users/:user_id/predictions", middleware.ReuqireSign, controllers.GetPredictionByUser) //get all the prediction made by a user //get list of images from the specified species dataset

	adminRoute := r.Group("/", middleware.ReuqireAuth, middleware.ReuqireAuth)
	adminRoute.POST("/predictions/:model", controllers.Predict)                   //make prediction with specified model
	adminRoute.POST("/models/train/new", controllers.TrainNewModel)               //make a new model with no base model
	adminRoute.POST("/models/train/based/:model", controllers.TrainBasedModel)    //make a new model with base model
	adminRoute.POST("/models/train/accept", controllers.AcceptModel)              //accept the model that has just been trained
	adminRoute.POST("/models/train/decline", controllers.DeclineModel)            //decline the model that has just been trained
	adminRoute.GET("/models/:name", controllers.GetModel)                         //get the model data (name, date, report, etc)
	adminRoute.GET("/models", controllers.GetModels)                              //get the list of all the models saved
	adminRoute.POST("/species", controllers.CreateSpecies)                        //add a new species to be listed on the system
	adminRoute.POST("/species/:species_id/images", controllers.AddImagetoSpecies) //add images to the specified species dataset
	adminRoute.GET("/users", controllers.GetUsers)                                //get all the users data
	adminRoute.GET("/predictions",controllers.GetPredictions)                                                //get all the prediction data

	port := os.Getenv("PORT")
	r.Run(":" + port)
}
