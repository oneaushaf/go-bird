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
		Name           string `bind:"required"`
		Description    string `bind:"required"`
		Category       string `bind:"required"`
		ScientificName string `bind:"required"`
	}

	if err := c.Bind(&body); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "invalid body",
			"error":   err.Error(),
		})
		return
	}

	species := models.Species{
		Name:        body.Name,
		Description: body.Description,
		Category:    body.Category,
		ScientificName: body.ScientificName,
	}

	if err := repositories.CreateSpecies(&species); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to create species",
			"error":   err.Error(),
		})
		return
	}

	folderName := fmt.Sprintf("%03d-%s", species.ID, species.Name)
	if err := os.MkdirAll(os.Getenv("DATASET_STORAGE")+"/training/"+folderName, os.ModePerm); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "failed to create species folder",
			"error":   err.Error(),
		})
		return
	}
	if err := os.MkdirAll(os.Getenv("DATASET_STORAGE")+"/testing/"+folderName, os.ModePerm); err != nil {
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

func GetAllSpecies(c *gin.Context) {
	check := c.Query("trained")
	q := ""
	if check == "false" {
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
func GetSpecies(c *gin.Context) {
	id := c.Param("species_id")
	species, err := repositories.GetSpeciesById(id)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "fail to get models from repository",
			"error":   err.Error(),
		})
		return
	}
	c.JSON(http.StatusOK, species)
}

func GetSpeciesImagesUrl(c *gin.Context) {
	id := c.Param("species_id")
	meta := c.Query("meta")
	trainImg := []models.TrainingImage{}
	validationImg := []models.ValidationImage{}
	testImg := []models.TestingImage{}

	if meta == "" {
		repositories.DB.Find(&trainImg, "species_id=?", id)
		repositories.DB.Find(&validationImg, "species_id=?", id)
		repositories.DB.Find(&testImg, "species_id=?", id)

	} else {
		repositories.DB.Find(&trainImg, "species_id=? AND meta=?", id, meta)
		repositories.DB.Find(&validationImg, "species_id=? AND meta=?", id, meta)
		repositories.DB.Find(&testImg, "species_id=? AND meta=?", id, meta)
	}
	var result []string

	for _, img := range trainImg {
		url := fmt.Sprintf("/species/%s/images/training/%s", id, img.FileName)
		result = append(result, url)
	}
	for _, img := range validationImg {
		url := fmt.Sprintf("/species/%s/images/validation/%s", id, img.FileName)
		result = append(result, url)
	}
	for _, img := range testImg {
		url := fmt.Sprintf("/species/%s/images/testing/%s", id, img.FileName)
		result = append(result, url)
	}

	if len(result) == 0 {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "no image found",
		})
		return
	} else {
		c.JSON(http.StatusOK, result)
		return
	}
}

func GetSpeciesImagesUrlBytype(c *gin.Context) {
	id := c.Param("species_id")
	imgtype := c.Param("type")
	meta := c.Query("meta")
	untrained := c.Query("untrained")



	var img any
	if imgtype == "training" {
		img = &[]models.TrainingImage{}
	} else if imgtype == "validation" {
		img = &[]models.ValidationImage{}
	} else if imgtype == "testing" {
		img = &[]models.TestingImage{}
	} else {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid image type"})
		return
	}

	if imgtype == "training" && untrained == "true"{
		repositories.DB.Find(img, "species_id=? AND is_trained=?" , id,true)
	}else{
		if meta == "" {
			repositories.DB.Find(img, "species_id=?", id)
		} else {
			repositories.DB.Find(img, "species_id=? AND meta=?", id, meta)
		}
	}
	
	

	var result []string
	switch v := img.(type) {
	case *[]models.TrainingImage:
		for _, img := range *v {
			url := fmt.Sprintf("/species/%s/images/training/%s", id, img.FileName)
			result = append(result, url)
		}
	case *[]models.ValidationImage:
		for _, img := range *v {
			url := fmt.Sprintf("/species/%s/images/validation/%s", id, img.FileName)
			result = append(result, url)
		}
	case *[]models.TestingImage:
		for _, img := range *v {
			url := fmt.Sprintf("/species/%s/images/testing/%s", id, img.FileName)
			result = append(result, url)
		}
	}

	if len(result) == 0 {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "no image found",
		})
		return
	} else {
		c.JSON(http.StatusOK, result)
		return
	}
}

func GetSpeciesImage(c *gin.Context) {
	
	id := c.Param("species_id")
	datatype := c.Param("type")
	img := c.Param("name")
	species, err := repositories.GetSpeciesById(id)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "no species found in database",
			"error":   err.Error(),
		})
		return
	}
	
	dir := fmt.Sprintf("%s/%s/%03d-%s/%s", os.Getenv("DATASET_STORAGE"), datatype, species.ID, species.Name, img)
	if _, err := os.Stat(dir); os.IsNotExist(err) {
		c.JSON(http.StatusNotFound, gin.H{
			"message": "image not found",
			"error":   err.Error(),
		})
		return
	}else {
		c.File(dir)
		return
	}
	// return
}

func DeleteSpeciesImage(c *gin.Context) {
	
	id := c.Param("species_id")
	datatype := c.Param("type")
	img := c.Param("name")
	species, err := repositories.GetSpeciesById(id)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "no species found in database",
			"error":   err.Error(),
		})
		return
	}
	
	var result interface{}

	switch datatype {
	case "training":
		var model models.TrainingImage
		err = repositories.DB.First(&model, "file_name = ?", img).Error
		result = &model
	case "validation":
		var model models.ValidationImage
		err = repositories.DB.First(&model, "file_name = ?", img).Error
		result = &model
	case "testing":
		var model models.TestingImage
		err = repositories.DB.First(&model, "file_name = ?", img).Error
		result = &model
	default:
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "invalid datatype",
		})
		return
	}

	if err!=nil{
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "cant find image filename",
			"error": err.Error(),
		})
		return
	}

	dir := fmt.Sprintf("%s/%s/%03d-%s/%s", os.Getenv("DATASET_STORAGE"), datatype, species.ID, species.Name, img)
	if _, err := os.Stat(dir); os.IsNotExist(err) {
		c.JSON(http.StatusNotFound, gin.H{
			"message": "image not found",
			"error":   err.Error(),
		})
		return
	}

	err = os.Remove(dir)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	if err := repositories.DB.Delete(result).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
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
