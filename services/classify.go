package services

import (
	"os"

	"github.com/gin-gonic/gin"
)

func ClassifyImage(filename string, file string, result gin.H) (*string, error) {
	class := result["result"].(string)
	confidence := result["confidence"].(map[string]interface{})[class]
	if confidence.(float64) > 50 {
		dest_folder := os.Getenv("PREDICTION_STORAGE") +"/"+ class
		destination := dest_folder + "/" + filename
		err := os.MkdirAll(dest_folder, os.ModePerm)
		if err != nil {
			return nil,err
		}
		err = os.Rename(file, destination)
		if err != nil {
			return nil, err
		}
		return &destination, nil
	}
	return nil, nil
}
