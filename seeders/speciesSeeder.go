package seeders

import (
	"github.com/oneaushaf/go-bird/models"
)

var species []models.Species

func initSpecies(){
	species = []models.Species{
		{Name : "Bangau leher-hitam",Images: 32},
		{Name : "Curik Bali",Images: 32},
		{Name : "Ekek Geling",Images: 32},
		{Name : "Gelatik Jawa",Images: 32},
		{Name : "Kakatua Raja",Images: 32},
		{Name : "Luntur harimau",Images: 32},
		{Name : "Merak Hijau",Images: 32},
		{Name : "Paok Bidadari",Images: 32},
		{Name : "Raja udang kalung-biru jawa",Images: 32},
		{Name : "Sikatan besar",Images: 32},
		{Name : "Baza hitam",Images: 32},
	}
}