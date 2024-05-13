package services

import (
	"fmt"
	// "strconv"
	"strings"
)

func ParseIDAndSpecies(input string) (string, string, error) {
	// Split the input string by "-"
	parts := strings.Split(input, "-")
	if len(parts) != 2 {
		return "", "", fmt.Errorf("invalid input format")
	}

	// Parse the ID part into an integer
	// id, err := strconv.Atoi(parts[0])
	// if err != nil {
	// 	return "", "", fmt.Errorf("failed to parse ID: %v", err)
	// }

	// Extract the species part
	// species := parts[1]

	return parts[0], parts[1], nil
}