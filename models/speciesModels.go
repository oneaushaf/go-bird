package models

import (
	"gorm.io/gorm"
)

type Species struct {
	gorm.Model
	Name   string
	Images uint
}