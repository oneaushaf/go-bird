package models

import (
	"gorm.io/gorm"
)

type Species struct {
	gorm.Model
	Name           string
	Description    string
	Training       uint
	Untrained      uint
	Testing        uint
	Validation     uint
	ScientificName string
	Category       string
	// Datasets       []Dataset //to be deleted
	TrainImages    []TrainingImage
	ValidateImages []ValidationImage
	TestImages     []TestingImage
}
