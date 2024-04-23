package models

import (
	"github.com/gin-gonic/gin"
	"gorm.io/datatypes"
	"gorm.io/gorm"
)

type Model struct {
	gorm.Model
	Name        string `gorm:"not null,index"`
	Description string
	Report      datatypes.JSON `gorm:"type:json"`
	TestResult  datatypes.JSON `gorm:"type:json"`
	IsUsed      bool           `gorm:"type:bool"`
}

type Data struct {
	BestAccuracy    float64 `json:"best_accuracy,omitempty"`
	BestLoss        float64 `json:"best_loss,omitempty"`
	BestValAccuracy float64 `json:"best_val_accuracy,omitempty"`
	BestValLoss     float64 `json:"best_val_loss,omitempty"`
	TrainingTime    float64 `json:"training_time,omitempty"`
	Epochs          int     `json:"epochs,omitempty"`
}

type TestResult struct {
	Precision float64 `json:"precision"`
	Recall    float64 `json:"recall"`
	Class     map[string]struct {
		Precision float64 `json:"precision"`
		Recall    float64 `json:"recall"`
	} `json:"class"`
}

type Request struct {
	Success bool       `json:"success"`
	Message string     `json:"message,omitempty"`
	Error   string     `json:"error,omitempty"`
	Data    Data       `json:"data,omitempty"`
	Test    TestResult `json:"test"`
}

func ModelScheme(m []Model) gin.H {
	result := gin.H{}
	for i := range m {
		result[m[i].Name] = m[i]
	}
	return result
}
