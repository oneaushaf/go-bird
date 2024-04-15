package repositories

import (
	"github.com/oneaushaf/go-bird/models"
)

func CreateSpecies(model *models.Species) error {
	return DB.Create(model).Error
}

// func UseImagesSpecies()error{
//     var species []models.Species
//     if err := DB.Find(&species,"unused_image!=0").Error; err != nil {
//         return err
//     }

// }

func GetAllSpecies(params ...interface{}) ([]models.Species,error) {
	var species []models.Species
    q := DB.Find(&species,params...)
    if err := q.Error; err != nil {
        return nil, err
    } else if q.RowsAffected == 0 {
        return nil,nil
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

