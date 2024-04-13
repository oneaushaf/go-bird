package repositories

import (

	"github.com/oneaushaf/go-bird/models"
)

func CreateSpecies(model *models.Species) error {
	return DB.Create(model).Error
}

func GetAllSpecies() ([]models.Species,error) {
	var species []models.Species
    if err := DB.Find(&species).Error; err != nil {
        return nil, err
    }
    return species, nil
}

func GetSpeciesById(id string) (*models.Species, error) {
    var species models.Species
    if err := DB.First(&species,"id=?",id).Error; err != nil {
        return nil, err
    }
    return &species, nil
}

