package seeders

import (
	"github.com/oneaushaf/go-bird/models"
)

var model []models.Model

func initModel(){
	model = []models.Model{
		{Name : "240331-0001",IsUsed: false},
		{Name : "240420-0001",IsUsed: true},
	}
}