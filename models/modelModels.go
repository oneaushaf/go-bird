package models

import (
	"gorm.io/gorm"
	"gorm.io/datatypes"
)

type Model struct {
	gorm.Model
	Name        string `gorm:"not null,index"`
	TrainedDate string
	Report      datatypes.JSON `gorm:"type:json"`
}
