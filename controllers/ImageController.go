package controllers

import (
	"archive/zip"
	"fmt"
	// "mime/multipart"
	"net/http"
	"os"
	"path/filepath"
	"strconv"

	"github.com/gin-gonic/gin"
	"github.com/oneaushaf/go-bird/models"
	"github.com/oneaushaf/go-bird/repositories"
	"github.com/oneaushaf/go-bird/services"
)

func AddImagesFromZip(c *gin.Context) {
    id := c.Param("species_id")
    species, err := repositories.GetSpeciesById(id)
    if err != nil {
        c.JSON(http.StatusBadRequest, gin.H{
            "message": "failed to get species",
            "error":   err.Error(),
        })
        return
    }
    idInt, _ := strconv.Atoi(id)

    // Increase the multipart form limit
    if err := c.Request.ParseMultipartForm(100 << 20); err != nil {
        c.JSON(http.StatusBadRequest, gin.H{
            "message": "failed to parse form",
            "error":   err.Error(),
        })
        return
    }

    meta := c.PostForm("meta")
    zipFile, zipFileheader, err := c.Request.FormFile("file")
    if err != nil {
        c.JSON(http.StatusBadRequest, gin.H{
            "message": "failed to get zip file",
            "error":   err.Error(),
        })
        return
    }
    defer zipFile.Close()

    // Read the zip file
    zipReader, err := zip.NewReader(zipFile, zipFileheader.Size)
    if err != nil {
        c.JSON(http.StatusInternalServerError, gin.H{
            "message": "failed to read zip file",
            "error":   err.Error(),
        })
        return
    }

    // Extract images from zip
    var images []*zip.File
    for _, file := range zipReader.File {
        if !file.FileInfo().IsDir() {
            images = append(images, file)
        }
    }

    count := len(images)
    vCount := (count + 9) / 10

    for i, image := range images {
        name, _ := services.RandStr(16)
        ext := filepath.Ext(image.Name)
        var dst string
        var img any

        if i < vCount {
            dst = fmt.Sprintf("%s/validation/%03d-%s/%s%s", os.Getenv("DATASET_STORAGE"), species.ID, species.Name, name, ext)
            img = &models.ValidationImage{
                SpeciesID: uint(idInt),
                FileName:  name + ext,
                Meta:      meta,
            }
            species.Validation += 1
        } else if i < 2*vCount {
            dst = fmt.Sprintf("%s/testing/%03d-%s/%s%s", os.Getenv("DATASET_STORAGE"), species.ID, species.Name, name, ext)
            img = &models.TestingImage{
                SpeciesID: uint(idInt),
                FileName:  name + ext,
                Meta:      meta,
            }
            species.Testing += 1
        } else {
            dst = fmt.Sprintf("%s/training/%03d-%s/%s%s", os.Getenv("DATASET_STORAGE"), species.ID, species.Name, name, ext)
            img = &models.TrainingImage{
                SpeciesID: uint(idInt),
                FileName:  name + ext,
                IsTrained: false,
                Meta:      meta,
            }
            species.Training += 1
            species.Untrained += 1
        }

        repositories.DB.Save(&species)

        if err := services.SaveFileFromZip(image, dst); err != nil {
            c.JSON(http.StatusInternalServerError, gin.H{
                "message": "failed to save file",
                "error":   err.Error(),
            })
            return
        }

        if err := repositories.DB.Create(img).Error; err != nil {
            c.JSON(http.StatusInternalServerError, gin.H{
                "message": "failed to save image record",
                "error":   err.Error(),
            })
            return
        }
    }

    c.JSON(http.StatusOK, gin.H{
        "message": len(images),
    })
}



func AddImage(c *gin.Context) {
    if c.Query("zip")=="true"{
        AddImagesFromZip(c)
        return
    }
    id := c.Param("species_id")
    species, err := repositories.GetSpeciesById(id)
    if err != nil {
        c.JSON(http.StatusBadRequest, gin.H{
            "message": "failed to get species",
            "error":   err.Error(),
        })
        return
    }
    id_int, _ := strconv.Atoi(id)

    if err := c.Request.ParseMultipartForm(10 << 20); err != nil {
        c.JSON(http.StatusBadRequest, gin.H{
            "message": "failed to parse form",
            "error":   err.Error(),
        })
        return
    }
    meta := c.PostForm("meta")
    images := c.Request.MultipartForm.File["images"]

    count := len(images)
    v_count := (count + 9) / 10

    for i, image := range images {
        name, _ := services.RandStr(16)
        ext := filepath.Ext(image.Filename)

        var dst string
        var img any

        if i < v_count {
            dst = fmt.Sprintf("%s/validation/%03d-%s/%s%s", os.Getenv("DATASET_STORAGE"), species.ID, species.Name, name, ext)
            img = &models.ValidationImage{
                SpeciesID: uint(id_int),
                FileName:  name + ext ,
                Meta:      meta,
            }
        } else if i < 2*v_count {
            dst = fmt.Sprintf("%s/testing/%03d-%s/%s%s", os.Getenv("DATASET_STORAGE"), species.ID, species.Name, name, ext)
            img = &models.TestingImage{
                SpeciesID: uint(id_int),
                FileName:  name + ext,
                Meta:      meta,
            }
        } else {
            dst = fmt.Sprintf("%s/training/%03d-%s/%s%s", os.Getenv("DATASET_STORAGE"), species.ID, species.Name, name, ext)
            img = &models.TrainingImage{
                SpeciesID: uint(id_int),
                FileName:  name + ext,
                IsTrained: false,
                Meta:      meta,
            }
        }

        if err := c.SaveUploadedFile(image, dst); err != nil {
            c.JSON(http.StatusInternalServerError, gin.H{
                "message": "failed to save file",
                "error":   err.Error(),
            })
            return
        }

        if err := repositories.DB.Create(img).Error; err != nil {
            c.JSON(http.StatusInternalServerError, gin.H{
                "message": "failed to save image record",
                "error":   err.Error(),
            })
            return
        }
    }

    c.JSON(http.StatusOK, gin.H{
        "message": len(images),
    })
}

func AddSpecifiedImage(c *gin.Context){
	id := c.Param("species_id")
	species, err := repositories.GetSpeciesById(id)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "failed to get species",
			"error":   err.Error(),
		})
		return
	}
	id_int,_ := strconv.Atoi(id)

	if err := c.Request.ParseMultipartForm(10 << 20); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "failed to parse form",
			"error":   err.Error(),
		})
		return
	}
	imgType := c.Param("type")

	if (!(imgType=="training" || imgType== "validation" || imgType== "testing")) {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "invalid data type, please use train, validate, or test",
		})
		return
	}

	meta := c.PostForm("meta")
	images := c.Request.MultipartForm.File["images"]
	// count := len(images)


	for _, image := range images {
		name,_ := services.RandStr(16)
		ext := filepath.Ext(image.Filename)
			dst := fmt.Sprintf("%s/%s/%03d-%s/%s%s", os.Getenv("DATASET_STORAGE"),imgType, species.ID, species.Name, name, ext)
			if err := c.SaveUploadedFile(image, dst); err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{
					"message": "failed to save file",
					"error":   err.Error(),
				})
				return
			}
			if (imgType=="training"){
				val := models.TrainingImage{
					SpeciesID: uint(id_int),
					FileName: name+ext,
					IsTrained : false,
					Meta: meta,
				}
	
				repositories.DB.Create(&val)
			}else if (imgType=="validation"){
				val := models.ValidationImage{
					SpeciesID: uint(id_int),
					FileName: name+ext,
					Meta: meta,
				}
	
				repositories.DB.Create(&val)
			} else if (imgType=="testing"){
				val := models.TestingImage{
					SpeciesID: uint(id_int),
					FileName: name+ext,
					Meta: meta,
				}
	
				repositories.DB.Create(&val)
			}else {
                c.JSON(http.StatusBadRequest,gin.H{
                    "message" : "invalid image type",
                })
            }
	}
}

func GetSpeciesMetas(c *gin.Context){
	id := c.Param("species_id")
	type MetaCount struct {
        Meta  string
        Count int64
		Images string 
    }

    var results []MetaCount

    // Perform the query
    if err := repositories.DB.Model(&models.TrainingImage{}).Select("meta, COUNT(*) as count").Group("meta").Find(&results,"species_id=?",id).Error; err != nil {
        c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
        return
    }

	for i,img := range results {
		url := fmt.Sprintf("/species/%s/images?meta=%s",id,img.Meta)
		results[i].Images = url
	}

    // Send the results as JSON response
    c.JSON(http.StatusOK, results)
}