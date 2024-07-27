package services

import (
	"archive/zip"
	"io"
	"os"
	"path/filepath"
	"strconv"
)

func RemoveDir(dir string) error {
	if err := os.RemoveAll(dir); err != nil {
		return err
	}
	return nil
}

func RenameDir(oldDir string, newDir string) error {
	if err := os.Rename(oldDir, newDir); err != nil {
		return err
	}
	return nil
}

// func checkDir(dir string) error {
// 	return nil
// }

func GetImagesInRange(foldertype string, folder string, start, end int) ([]string, error) {
	// Open the folder
	storage := os.Getenv("DATASET_STORAGE")
	var res []string
	dir, err := os.Open(storage + "/" + foldertype + "/" + folder)
	if err != nil {
		return nil, err
	}
	defer dir.Close()

	// Read the files in the folder
	fileInfos, err := dir.Readdir(-1)
	if err != nil {
		return nil, err
	}

	// Iterate through the files
	for _, fileInfo := range fileInfos {
		// Check if the file is a regular file
		if fileInfo.Mode().IsRegular() {
			// Parse the filename to extract the number
			filename := fileInfo.Name()
			fileNumberStr := filename[:len(filename)-len(filepath.Ext(filename))] // Remove file extension
			fileNumber, err := strconv.Atoi(fileNumberStr)
			if err != nil {
				continue
			}

			// Check if the file number is within the specified range
			if fileNumber >= start && fileNumber <= end {
				// Delete the file
				res = append(res, foldertype+"/"+filename)
				// if err != nil {
				// 	return err
				// }
			}
		}
	}

	return res, nil
}
func SaveFileFromZip(zipFile *zip.File, dst string) error {
    fileReader, err := zipFile.Open()
    if err != nil {
        return err
    }
    defer fileReader.Close()

    dstFile, err := os.Create(dst)
    if err != nil {
        return err
    }
    defer dstFile.Close()

    if _, err := io.Copy(dstFile, fileReader); err != nil {
        return err
    }

    return nil
}

func DeleteImagesInRange(folderpath string, start, end int) error {
	// Open the folder
	dir, err := os.Open(folderpath)
	if err != nil {
		return err
	}
	defer dir.Close()

	// Read the files in the folder
	fileInfos, err := dir.Readdir(-1)
	if err != nil {
		return err
	}

	// Iterate through the files
	x := start
	for _, fileInfo := range fileInfos {
		// Check if the file is a regular file
		if fileInfo.Mode().IsRegular() {
			// Parse the filename to extract the number
			filename := fileInfo.Name()
			fileNumberStr := filename[:len(filename)-len(filepath.Ext(filename))]
			fileExt := filename[len(filename)-len(filepath.Ext(filename))+1:] // Remove file extension
			fileNumber, err := strconv.Atoi(fileNumberStr)
			if err != nil {
				continue
			}

			// Check if the file number is within the specified range
			if fileNumber >= start && fileNumber <= end {
				// Delete the file
				err := os.Remove(filepath.Join(folderpath, filename))
				if err != nil {
					return err
				}
			} else if fileNumber > end {
				newFileName := strconv.Itoa(x) + fileExt
				err := os.Rename(filepath.Join(folderpath, filename), filepath.Join(folderpath,newFileName))
				if err != nil {
					return err
				}
				x++
			}
		}
	}
	return nil
}
