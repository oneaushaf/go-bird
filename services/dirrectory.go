package services

import "os"

func RemoveDir(dir string) error {
	if err := os.RemoveAll(dir); err != nil {
		return err
	}
	return nil
}

func RenameDir(oldDir string, newDir string)error{
	if err := os.Rename(oldDir, newDir); err != nil {
		return err
	}
	return nil
}

func checkDir(dir string) error {
	return nil
}