package murach.service;

import murach.model.UserModel;

public interface IUserService {
	
	UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
	
	
}
