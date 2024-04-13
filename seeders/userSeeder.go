package seeders

import (
	"github.com/oneaushaf/go-bird/models"
	"golang.org/x/crypto/bcrypt"
)

var users []models.User

func hash(input string)(string){
	result,err := bcrypt.GenerateFromPassword([]byte("123qweasdzxc"), 10)
	if err!= nil {
		return ""
	}
	return string(result)
}

func initUsers(){
	users = []models.User{
		{
			Name : "Wan Muhammad Fikri Aushaf",
			Phone    : "081275608909",
			Username : "wanaushaf",
			Email    : "wanaushaf@gmail.com",
			Password : hash("123qweasdzxc"),
			UserType : "admin",
		},
	}
}