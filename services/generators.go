package services

import (
	"crypto/rand"
	"encoding/hex"
	"io"
)

func RandStr(length int) (string, error) {
	bytes := make([]byte, length)
	if _, err := io.ReadFull(rand.Reader, bytes); err != nil {
		return "", err
	}
	return hex.EncodeToString(bytes), nil
}