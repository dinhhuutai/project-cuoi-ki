package murach.service.impl;

import javax.inject.Inject;

import murach.dao.IUserDAO;
import murach.model.UserModel;
import murach.service.IUserService;

public class UserService implements IUserService {

	@Inject
	private IUserDAO userDAO;
	
	
	public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {

		return userDAO.findByUserNameAndPasswordAndStatus(userName, password, status);
	}

	
	
}
