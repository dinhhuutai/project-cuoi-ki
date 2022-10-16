package murach.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import murach.model.RoleModel;
import murach.model.UserModel;

public class UserMapper implements RowMapper<UserModel> {

	public UserModel mapRow(ResultSet resultSet) {
	
		try {
			
			UserModel user = new UserModel();
			user.setId(resultSet.getLong("id"));
			user.setUserName(resultSet.getString("username"));
			user.setFullName(resultSet.getString("fullname"));
			user.setPassword(resultSet.getString("password"));
			user.setStatus(resultSet.getInt("status"));
			user.setAddress(resultSet.getString("address"));
			user.setEmail(resultSet.getString("email"));
			user.setPhone(resultSet.getString("phone"));
			
			try {
				RoleModel role = new RoleModel();
				role.setCode(resultSet.getString("code"));
				role.setName(resultSet.getString("name"));
				
				user.setRole(role);
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			return user;
			
		} catch (SQLException e) {
			
			return null;
		}
	}

}
