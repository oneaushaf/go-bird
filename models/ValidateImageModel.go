package models

import (
	"gorm.io/gorm"
)

type ValidationImage struct {
	gorm.Model
	SpeciesID uint
	FileName  string
	Meta      string
}
