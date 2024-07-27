package repositories

import "github.com/oneaushaf/go-bird/models"

func SyncDatabase(){
	DB.AutoMigrate(&models.User{})
	DB.AutoMigrate(&models.Model{})
	DB.AutoMigrate(&models.Predcition{})
	DB.AutoMigrate(&models.Species{})
	// DB.AutoMigrate(&models.Dataset{})
	DB.AutoMigrate(&models.TrainingImage{})
	DB.AutoMigrate(&models.TestingImage{})
	DB.AutoMigrate(&models.ValidationImage{})
}