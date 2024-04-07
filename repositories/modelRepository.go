package repositories

import "github.com/oneaushaf/go-bird/models"

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