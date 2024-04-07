package services

import (
	"mime/multipart"
	"strings"
)

func IsImage(file *multipart.FileHeader) bool{
	if !strings.HasPrefix(file.Header.Get("Content-Type"),"image/"){
		return true
	}
	return false
}