package services

import (
	"errors"

	"github.com/oneaushaf/go-bird/repositories"
	"github.com/oneaushaf/go-bird/models"
	"golang.org/x/crypto/bcrypt"
	"gorm.io/gorm"
)

func CheckCredentials(identifier string, password string) (*models.User,error){
	user,err := repositories.GetUserByIdentifier(identifier)

	if user == nil {
		return nil,errors.New("invalid identifier or password")
	}

	if err := bcrypt.CompareHashAndPassword([]byte(user.Password),[]byte(password));err!=nil{
		return nil,errors.New("invalid identifier or password")
	}

	if err != nil {
		return nil,errors.New("internal server error")
	}

	return user,nil
}

func CheckExistence(email string, username string, phone string) (bool, error){
	existingUser, err := repositories.GetUserByIdentifier(username)
	if existingUser != nil {
		return true,nil
	} else if !errors.Is(err,gorm.ErrRecordNotFound) {
		return false,err
	}

	existingUser, err = repositories.GetUserByIdentifier(email)
	if existingUser != nil {
		return true,nil
	} else if !errors.Is(err,gorm.ErrRecordNotFound) {
		return false,err
	} 
	existingUser, err = repositories.GetUserByIdentifier(phone)
	if existingUser != nil {
		return true,nil
	} else if !errors.Is(err,gorm.ErrRecordNotFound) {
		return false,err
	} 

	return false,nil
}