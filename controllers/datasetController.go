package controllers

import (
	"fmt"
	"net/http"
	"os"
	"path/filepath"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/models"
	"github.com/oneaushaf/go-bird/repositories"
)

func AddImagetoSpecies(c *gin.Context) {
	id := c.Param("species_id")
	species, err := repositories.GetSpeciesById(id)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "failed to get species",
			"error":   err.Error(),
		})
		return
	}

	if err := c.Request.ParseMultipartForm(10 << 20); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "failed to parse form",
			"error":   err.Error(),
		})
		return
	}
	desc := c.PostForm("description")
	images := c.Request.MultipartForm.File["images"]
	count := len(images)
	v_count := (count+9) / 10	
	for i, image := range images {
		if i < v_count {
			ext := filepath.Ext(image.Filename)
			dst := fmt.Sprintf("%s/validation/%03d-%s/%03d%s", os.Getenv("DATASET_STORAGE"), species.ID, species.Name, species.Validation+1, ext)
			if err := c.SaveUploadedFile(image, dst); err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{
					"message": "failed to save file",
					"error":   err.Error(),
				})
				return
			}
			species.Validation = species.Validation + 1
		} else if i < 2*v_count {
			ext := filepath.Ext(image.Filename)
			dst := fmt.Sprintf("%s/test/%03d-%s/%03d%s", os.Getenv("DATASET_STORAGE"), species.ID, species.Name, species.Testing+1, ext)
			if err := c.SaveUploadedFile(image, dst); err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{
					"message": "failed to save file",
					"error":   err.Error(),
				})
				return
			}
			species.Testing = species.Testing + 1
		} else {
			ext := filepath.Ext(image.Filename)
			dst := fmt.Sprintf("%s/train/%03d-%s/%03d%s", os.Getenv("DATASET_STORAGE"), species.ID, species.Name, species.Training+1, ext)
			if err := c.SaveUploadedFile(image, dst); err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{
					"message": "failed to save file",
					"error":   err.Error(),
				})
				return
			}
			species.Training = species.Training + 1
			species.Untrained = species.Untrained + 1
		}
	}
	idx := fmt.Sprintf("%d,%d,%d",species.Training+1,species.Testing,species.Validation)
	dataset := models.Dataset{
		SpeciesID : species.ID,
		Images : uint(count),
		Startindex: idx,
		IsTrained: false,
		Description: desc,
	}
	repositories.DB.Save(species)
	repositories.CreateDataset(&dataset)
	c.JSON(http.StatusOK, gin.H{"message": "images uploaded successfully"})
}

func DeleteUntrainedDataset(c *gin.Context){
	
}