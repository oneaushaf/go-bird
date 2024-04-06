package services

import (
	"bytes"
	"encoding/json"
	"io"
	"mime/multipart"
	"net/http"
	"os"
	"path/filepath"

	"github.com/gin-gonic/gin"
)

func SendImageToAPI(endpoint string, imagePath string, params gin.H) (gin.H, error) {
    file, err := os.Open(imagePath)
    if err != nil {
        return nil, err
    }
    defer file.Close()

    requestBody := &bytes.Buffer{}
    writer := multipart.NewWriter(requestBody)

    // Create a form file field for the image
    imageField, err := writer.CreateFormFile("image", filepath.Base(imagePath))
    if err != nil {
        return nil, err
    }

    // Copy the image data to the form file field
    if _, err := io.Copy(imageField, file); err != nil {
        return nil, err
    }

    // Add additional form fields to the request body
    for key, value := range params {
        if err := writer.WriteField(key, value.(string)); err != nil {
            return nil, err
        }
    }

    // Close the multipart writer
    if err := writer.Close(); err != nil {
        return nil, err
    }

    // Create a new HTTP request
    req, err := http.NewRequest(http.MethodPost, endpoint, requestBody)
    if err != nil {
        return nil, err
    }
    req.Header.Set("Content-Type", writer.FormDataContentType())

    // Send the HTTP request
    client := http.DefaultClient
    res, err := client.Do(req)
    if err != nil {
        return nil, err
    }
    defer res.Body.Close()

    // Decode the response body into a map
    var response gin.H
    if err := json.NewDecoder(res.Body).Decode(&response); err != nil {
        return nil, err
    }

    return response, nil
}
