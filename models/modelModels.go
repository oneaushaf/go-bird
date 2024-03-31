package models

import (
	"gorm.io/gorm"
)

type Model struct {
	gorm.Model
	Name        string
	TrainedDate uint
	Report      map[string]interface{} `gorm:"type:json"`
}
