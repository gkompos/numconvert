package net.codeproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImpl implements UserDAO {
	private String dburl="jdbc:mysql://localhost:3306/num_conv";
	private String dbuname="root";
	private String dbpassword="BGeorge.0412.9598";
	private String dbDriver="com.mysql.cj.jdbc.Driver";


	public void loadDriver(String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getConnection() {
		Connection con=null;
		try {
			con=DriverManager.getConnection(dburl, dbuname, dbpassword);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public int insertUser(User user) {
		int status=0;
		int countVisit=1;
		loadDriver(dbDriver);
		Connection con=getConnection();
		String sql="insert into num_conv.user (first_name, last_name, username, email, password, countVisit) values (?,?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, user.getFirstname());
			ps.setString(2, user.getLastname());
			ps.setString(3, user.getUsername());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getPassword());
			ps.setInt(6, countVisit);
			ps.executeUpdate();
			
		}catch (Exception e) {
			System.out.println(e);
		}
		return status;	
	}

	public User getUser(String username, String password) {
		User user=new User();
		loadDriver(dbDriver);
		Connection con=getConnection();
		String sql="select * from num_conv.user where username=? and password=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,username);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				user.setFirstname(rs.getString(2));
				user.setLastname(rs.getString(3));
				user.setUsername(rs.getString(4));
				user.setEmail(rs.getString(5));
				user.setPassword(rs.getString(6));		
			}
			
		}catch (Exception e) {
			
		}
		return user;

	}
	
	public String checkUserName(String username) {
		String Result="";
		loadDriver(dbDriver);
		Connection con=getConnection();
		String sql="select * from num_conv.user where username=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,username);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				Result="Exist";
			}
			else{
				Result="Not";
			}
					
		}
		catch (Exception e) {
			
		}
		return Result;
	}
	
	public String checkEmail(String email) {
		String Result="";
		loadDriver(dbDriver);
		Connection con=getConnection();
		String sql="select * from num_conv.user where email=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				Result="Exist";
			}
			else{
				Result="Not";
			}
		}
		catch (Exception e) {
			
		}
		return Result;
	}


}
