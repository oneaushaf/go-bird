package repositories

import "github.com/oneaushaf/go-bird/models"

func CreateModel(model *models.Model) error {
	return DB.Create(model).Error
}

