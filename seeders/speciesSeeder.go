package seeders

import (
	"github.com/oneaushaf/go-bird/models"
)

var species []models.Species

func initSpecies(){
	species = []models.Species{
		{Name : "Bangau leher-hitam",Training: 32,Untrained: 0,Testing: 4,Validation: 4},
		{Name : "Curik Bali",Training: 32,Untrained: 0,Testing: 4,Validation: 4},
		{Name : "Ekek Geling",Training: 32,Untrained: 0,Testing: 4,Validation: 4},
		{Name : "Gelatik Jawa",Training: 32,Untrained: 0,Testing: 4,Validation: 4},
		{Name : "Kakatua Raja",Training: 32,Untrained: 0,Testing: 4,Validation: 4},
		{Name : "Luntur harimau",Training: 32,Untrained: 0,Testing: 4,Validation: 4},
		{Name : "Merak Hijau",Training: 32,Untrained: 0,Testing: 4,Validation: 4},
		{Name : "Paok Bidadari",Training: 32,Untrained: 0,Testing: 4,Validation: 4},
		{Name : "Raja udang kalung-biru jawa",Training: 32,Untrained: 0,Testing: 4,Validation: 4},
		{Name : "Sikatan besar",Training: 32,Untrained: 0,Testing: 4,Validation: 4},
		{Name : "Baza hitam",Training: 32,Untrained: 0,Testing: 4,Validation: 4},
	}
}