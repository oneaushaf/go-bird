package models

import (
	"gorm.io/gorm"
)

type Model struct {
	gorm.Model
	Name        string `gorm:"not null"`
	TrainedDate uint
	Report      map[string]interface{} `gorm:"type:json"`
}
