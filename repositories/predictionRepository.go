package repositories

import (

	"github.com/oneaushaf/go-bird/models"
)

func CreatePrediction(model *models.Predcition) error {
	return DB.Create(model).Error
}