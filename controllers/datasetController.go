package controllers

import (
	"fmt"
	"net/http"
	"os"
	"path/filepath"
	"strconv"
	"strings"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/models"
	"github.com/oneaushaf/go-bird/repositories"
	"github.com/oneaushaf/go-bird/services"
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

func GetDatasets(c *gin.Context){
	id := c.Param("species_id")
	species := models.Species{}
	tx := repositories.DB.Preload("Datasets").First(&species,"id=?",id)
	if tx.Error != nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"repository error",
			"error":tx.Error.Error(),
		})
	}
	c.JSON(http.StatusOK,species.Datasets)
}

func GetDataset(c *gin.Context){
	id := c.Param("dataset_id")
	dataset := models.Dataset{}
	tx := repositories.DB.First(&dataset,"id=?",id)
	if tx.Error != nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"repository error",
			"error":tx.Error.Error(),
		})
		return
	}
	species,err := repositories.GetSpeciesById(strconv.Itoa(int(dataset.SpeciesID)))
	if err != nil {
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"repository error",
			"error":err,
		})
		return
	}
	parts := strings.Split(dataset.Startindex, ",")
	var starts []int
	for _, part := range parts {
		num, err := strconv.Atoi(part)
		if err != nil {
			c.JSON(http.StatusInternalServerError,gin.H{
				"message":"repository error",
				"error":tx.Error.Error(),
			})
			return
		}
		starts = append(starts, num)
	}
	sideCount := (dataset.Images+9)/10
	trainCount := dataset.Images - 2*sideCount

	ends := []int {
		starts[0]+int(trainCount)-1,
		starts[1]+int(sideCount)-1,
		starts[2]+int(sideCount)-1,
	}

	folder := fmt.Sprintf("%03d-%s",species.ID,species.Name)

	var res []string

	train,err1 := services.GetImagesInRange("train",folder,starts[0],ends[0])
	val,err2 := services.GetImagesInRange("validation",folder,starts[1],ends[1])
	test,err3:=services.GetImagesInRange("test",folder,starts[2],ends[2])

	if (err1!=nil || err2!=nil || err3!=nil){
		c.JSON(http.StatusInternalServerError,gin.H{
			"message":"failed to get image",
			"error":err1.Error()+err2.Error()+err3.Error(),
		})
		return
	}



	res = append(res,train...)
	res = append(res,val...)
	res = append(res,test...)

	for i,v := range res {
		res[i] = fmt.Sprintf("/species/%d/images/%s",species.ID,v)
	}
	
	c.JSON(http.StatusOK,gin.H{
		"images" : res,
		"dataset" : dataset,
	})
}

func DeleteDataset(c *gin.Context){
	
}