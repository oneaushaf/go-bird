package models

import (
	"gorm.io/gorm"
)

type User struct {
	gorm.Model
	Name string
	Phone     string
	Email     string `gorm:"unique;not null"`
	Password  string
	UserType  string
}