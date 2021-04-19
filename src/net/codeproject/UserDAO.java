package net.codeproject;

import java.sql.ResultSet;

public interface UserDAO {
	public int insertUser(User c);
	public User getUser(String username,String password);
	public String checkUserName(String username);
	public String checkEmail(String email);
}
