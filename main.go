package main

import (
	"os"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/controllers"
	"github.com/oneaushaf/go-bird/middleware"
	"github.com/oneaushaf/go-bird/repositories"

	// "github.com/oneaushaf/go-bird/seeders"
	"github.com/oneaushaf/go-bird/services"
)

func init() {
	services.LoadEnv()
	repositories.ConnectDatabase()
	repositories.SyncDatabase()
}

func main() {
	r := gin.Default()
	r.RedirectTrailingSlash = false

	r.POST("/signup", controllers.Signup)                  //signup
	r.POST("/login", controllers.Login)                    //login
	r.POST("/models/train/done", controllers.TrainingDone) //(**is not used by client**) to notify train in finished
	// r.POST("/seed", seeders.Run)                           //will be deleted if i found a new way to seed db

	userRoute := r.Group("/", middleware.ReuqireAuth)
	// userRoute.POST("/predictions", controllers.Predict)                                                        //make prediction with latest model
	userRoute.POST("/predictions-v2", controllers.PredictV2)                                                   //make prediction with latest model
	userRoute.POST("/predictions", controllers.Predict)                                                        //make prediction with latest model
	userRoute.GET("/species", controllers.GetAllSpecies)                                                       //get the list of all species saved
	userRoute.GET("/species/:species_id", controllers.GetSpecies)                                              //get the list of all species saved
	userRoute.GET("/species/:species_id/meta", controllers.GetSpeciesMetas)                                    //get list of images from the specified species dataset
	userRoute.GET("/species/:species_id/images", controllers.GetSpeciesImagesUrl)                              //get list of images from the specified species dataset
	userRoute.GET("/species/:species_id/images/:type/:name", controllers.GetSpeciesImage)                      //get the image
	userRoute.GET("/species/:species_id/images/:type", controllers.GetSpeciesImagesUrlBytype)                  //get the image
	userRoute.GET("/users/auth", middleware.ReuqireAuth, controllers.GetAuth)                                  //get loged in user's data
	userRoute.GET("/users/:user_id", middleware.ReuqireSign, controllers.GetUser)                              //get a user's data
	userRoute.GET("/users/:user_id/predictions", middleware.ReuqireSign, controllers.GetPredictionByUser)      //get all the prediction made by a user //get list of images from the specified species dataset
	userRoute.GET("/predictions/:prediction_id", middleware.ReuqireAuth, controllers.GetPrediction)            //get all the prediction made by a user //get list of images from the specified species dataset
	userRoute.GET("/predictions/:prediction_id/image", middleware.ReuqireAuth, controllers.GetPredictionImage) //get all the prediction made by a user //get list of images from the specified species dataset

	adminRoute := r.Group("/", middleware.ReuqireAuth, middleware.ReuqireAuth)
	adminRoute.POST("/species", controllers.CreateSpecies)                              //add a new species to be listed on the system
	adminRoute.POST("/species/:species_id/images", controllers.AddImage)                //add images to the specified species dataset
	adminRoute.POST("/species/:species_id/images/:type", controllers.AddSpecifiedImage) //add images to the specified species dataset
	// adminRoute.POST("/predictions/:model", controllers.Predict)                         //make prediction with specified model
	adminRoute.GET("/models", controllers.GetModels)                    //get the list of all the models saved
	adminRoute.GET("/models/:name", controllers.GetModel)               //get the model data (name, date, report, etc)
	adminRoute.POST("/models/train/new", controllers.TrainNewModel)     //make a new model with no base model
	adminRoute.POST("/models/train/based", controllers.TrainBasedModel) //make a new model with base model
	adminRoute.GET("/models/train/check", controllers.CheckTraining)    //make a new model with no base model
	adminRoute.POST("/models/train/accept", controllers.AcceptModel)    //accept the model that has just been trained
	adminRoute.POST("/models/train/decline", controllers.DeclineModel)  //decline the model that has just been trained

	adminRoute.GET("/users", controllers.GetUsers)             //get all the users data
	adminRoute.GET("/predictions", controllers.GetPredictions) //get all the prediction data
	// adminRoute.DELETE("/datasets/:dataset_id", controllers.DeleteDataset) //add images to the specified species dataset

	// adminRoute.GET("/species/:species_id/datasets", controllers.GetDatasets)  //get datasets and context of species
	// adminRoute.GET("/datasets/:dataset_id", controllers.GetDataset)           //add images to the specified species dataset

	port := os.Getenv("PORT")
	r.Run(":" + port)
}
