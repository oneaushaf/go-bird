package models

import (
	"gorm.io/gorm"
)

type TestingImage struct {
	gorm.Model
	SpeciesID uint
	FileName  string
	Meta      string
}