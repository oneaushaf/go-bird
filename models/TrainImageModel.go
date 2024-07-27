package models

import (
	"gorm.io/gorm"
)

type TrainingImage struct {
	gorm.Model
	SpeciesID uint
	FileName  string
	Meta      string
	IsTrained bool
}
