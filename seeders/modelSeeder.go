package seeders

import (
	"github.com/oneaushaf/go-bird/models"
)

var model []models.Model

func initModel(){
	model = []models.Model{
		{Name : "base",},
		{Name : "240331",},
		{Name : "latest",},
	}
}