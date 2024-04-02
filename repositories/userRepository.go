package repositories

import "github.com/oneaushaf/go-bird/models"

func CreateUser(user *models.User) error {
	return DB.Create(user).Error
}

func GetUserByID(UserID uint) (*models.User,error) {
	user := &models.User{}
	if err := DB.First(user,"id=?",UserID).Error ;err!=nil{
		return nil, err
	}
	return user,nil
}

func GetUserByIdentifier(identifier string) (*models.User,error) {
	user := &models.User{}
	if err := DB.Where("email = ? OR phone = ? OR username = ?",identifier,identifier,identifier).First(&user).Error ;err!=nil{
		return nil, err
	}
	return user,nil
}

func GetUsers() (*[]models.User,error){
	users := &[]models.User{}
	if err := DB.Find(users).Error ;err!=nil{
		return nil, err
	}
	return users,nil
}
