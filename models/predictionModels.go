package models

import (
	"gorm.io/gorm"
)

type Predcition struct {
	gorm.Model
	UserID     uint
	ModelID    uint
	Result     string
	Confidence float64 `gorm:"type:DOUBLE"`
	Image      string
}
