package repositories

import (
	"gorm.io/gorm"
)

var DB *gorm.DB

func Seed(input interface{}) error{
	if err := DB.Create(input).Error; err != nil {
		return err
	}
	return nil
}