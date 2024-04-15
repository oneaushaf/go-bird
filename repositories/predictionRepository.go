package repositories

import (

	"github.com/oneaushaf/go-bird/models"
)

func CreatePrediction(model *models.Predcition) error {
	return DB.Create(model).Error
}

func GetPredictions()(*[]models.Predcition,error){
	predictions := &[]models.Predcition{}
	if err := DB.Find(predictions).Error ;err!=nil{
		return nil, err
	}
	return predictions,nil
}