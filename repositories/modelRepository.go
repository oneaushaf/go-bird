package repositories

import (

	"github.com/oneaushaf/go-bird/models"
)

func CreateModel(model *models.Model) error {
	return DB.Create(model).Error
}

func ExistsModel(column string, value interface{}) (bool, error) {
    var count int64
	model := models.Model{}
    query := DB.Model(&model).Where(column+" = ?", value).Count(&count)
    if query.Error != nil {
        return false, query.Error
    }
    return (count > 0), nil
}

func UpdateModelName(oldName, newName string) error {
    return DB.Model(&models.Model{}).Where("name = ?", oldName).Update("name", newName).Error
}

func GetAllModels() ([]models.Model, error) {
    var models []models.Model
    if err := DB.Find(&models).Error; err != nil {
        return nil, err
    }
    return models, nil
}

func GetModelByName(name string) (*models.Model, error) {
    var model models.Model
    if err := DB.First(&model,"name=?",name).Error; err != nil {
        return nil, err
    }
    return &model, nil
}

func GetUsedModel()(*models.Model, error){
    var model models.Model
    if err := DB.First(&model,"is_used=1").Error; err != nil {
        return nil, err
    }
    return &model, nil
}

func DeleteModelByName(name string)error {
    if err := DB.Unscoped().Where("name = ?", name).Delete(&models.Model{}).Error; err != nil {
        return err
    }
    return nil
}