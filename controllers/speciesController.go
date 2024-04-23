package controllers

import (
	"fmt"
	"net/http"
	"os"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/models"
	"github.com/oneaushaf/go-bird/repositories"
)

func CreateSpecies(c *gin.Context) {
	var body struct {
		Name string `bind:"required"`
	}

	if err := c.Bind(&body); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "invalid body",
			"error":   err.Error(),
		})
		return
	}

	species := models.Species{
		Name:   body.Name,
		Training: 0,
		Untrained: 0,
		Testing: 0,
		Validation: 0,
	}

	if err := repositories.CreateSpecies(&species); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to create species",
			"error":   err.Error(),
		})
		return
	}

	folderName := fmt.Sprintf("%03d-%s", species.ID, species.Name)
	if err := os.MkdirAll(os.Getenv("DATASET_STORAGE")+"/train/"+folderName, os.ModePerm); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to create species folder",
			"error":   err.Error(),
		})
		return
	}
	if err := os.MkdirAll(os.Getenv("DATASET_STORAGE")+"/test/"+folderName, os.ModePerm); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to create species folder",
			"error":   err.Error(),
		})
		return
	}
	if err := os.MkdirAll(os.Getenv("DATASET_STORAGE")+"/validation/"+folderName, os.ModePerm); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to create species folder",
			"error":   err.Error(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "species created succesfully",
	})
}

func GetSpecies(c *gin.Context) {
	check:=c.Query("trained")
	q := ""
	if check == "false"{
		q = "untrained > 0"
	}
	species, err := repositories.GetAllSpecies(q)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "fail to get models from repository",
			"error":   err.Error(),
		})
		return
	}
	c.JSON(http.StatusOK, species)
}

func GetSpeciesImages(c *gin.Context) {
	id := c.Param("species_id")
	species, err := repositories.GetSpeciesById(id)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "no species found in database",
			"error":   err.Error(),
		})
		return
	}
	dir := fmt.Sprintf("%s/train/%03d-%s", os.Getenv("DATASET_STORAGE"), species.ID, species.Name)

	files, err := os.ReadDir(dir)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "cannot read files in folder",
			"error":   err.Error(),
		})
		return
	}

	var list []string
	for _, f := range files {
		a := fmt.Sprintf("/species/%s/images/%s", id, f.Name())
		list = append(list, a)
	}

	c.JSON(http.StatusOK, list)
}

func GetSpeciesImage(c *gin.Context) {
	id := c.Param("species_id")
	img := c.Param("file")
	species, err := repositories.GetSpeciesById(id)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "no species found in database",
			"error":   err.Error(),
		})
		return
	}
	dir := fmt.Sprintf("%s/train/%03d-%s/%s", os.Getenv("DATASET_STORAGE"), species.ID, species.Name, img)
	if _, err := os.Stat(dir); os.IsNotExist(err) {
		c.JSON(http.StatusNotFound, gin.H{
			"message": "image not found",
			"error":   err.Error(),
		})
		return
	}
	c.File(dir)
}

func DeleteUntrainedImage(c *gin.Context) {
	id := c.Param("species_id")
	species, err := repositories.GetSpeciesById(id)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "no species found in database",
			"error":   err.Error(),
		})
		return
	}
	if species.Untrained == 0 {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "no untrained image",
			"error":   err.Error(),
		})
		return
	}
}
