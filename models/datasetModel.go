package models

import (
	"gorm.io/gorm"
)

type Dataset struct {
	gorm.Model
	SpeciesID   uint
	Images      uint
	Description string
	Startindex string
	IsTrained	bool
}
