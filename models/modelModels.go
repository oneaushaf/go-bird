package models

import (
	"github.com/gin-gonic/gin"
	"gorm.io/datatypes"
	"gorm.io/gorm"
)

type Model struct {
	gorm.Model
	Name   string         `gorm:"not null,index"`
	Report datatypes.JSON `gorm:"type:json"`
}

type Data struct {
	BestAccuracy    float64 `json:"best_accuracy,omitempty"`
	BestLoss        float64 `json:"best_loss,omitempty"`
	BestValAccuracy float64 `json:"best_val_accuracy,omitempty"`
	BestValLoss     float64 `json:"best_val_loss,omitempty"`
	TrainingTime    float64 `json:"training_time,omitempty"`
	Epochs          int     `json:"epochs,omitempty"`
}

type Request struct {
	Success bool   `json:"success"`
	Message string `json:"message,omitempty"`
	Error   string `json:"error,omitempty"`
	Data    Data   `json:"data,omitempty"`
}

func ModelScheme(m []Model)(gin.H){
	result := gin.H{}
	for i:= range m{
		result[m[i].Name] = m[i]
	} 
	return result
}
