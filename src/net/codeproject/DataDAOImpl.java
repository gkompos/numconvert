package net.codeproject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DataDAOImpl implements DataDAO {
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
	public int insertData(Data data) {
		int status=0;
		loadDriver(dbDriver);
		Connection con=getConnection();
		String sql="insert into num_conv.data (uname, convertor, result) values (?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, data.getuname());
			ps.setString(2, data.getConvertor());
			ps.setString(3, data.getResult());
			ps.executeUpdate();

		}catch (Exception e) {
			System.out.println(e);
		}
		return status;	
	}
	public String decocthex(String num,String uname){
		Data data=new Data();
		String result=" ",resdata=" ";
		int x = Integer.parseInt(num);
		int decimal=x,decimal1=x;
		if(x<1000) {
			int rem; //declaring variable to store remainder  
			String octal=""; //declaring variable to store octal  
			//declaring array of octal numbers  
			char octalchars[]={'0','1','2','3','4','5','6','7'};  
			//writing logic of decimal to octal conversion   
			while(decimal>0)  
			{  
				rem=decimal%8;
				octal=octalchars[rem]+octal;
				decimal=decimal/8;

			}	
			int rem1;  
			String hex="";   
			char hexchars[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};  
			while(decimal1>0)  
			{  
				rem1=decimal1%16;   
				hex=hexchars[rem1]+hex;   
				decimal1=decimal1/16;  
			}  
			String octal_s=String.valueOf(octal);
			resdata="The Decimal Number "+num+" to Octal is "+octal_s+" and to Hexadecimal is "+hex;
			result="Decimal is "+num+"@Octal is "+octal_s+"@Hexadecimal is "+hex;
			data.setuname(uname);
			data.setConvertor("dec-to-oct&hex");
			data.setResult(resdata);
			insertData(data);
		}
		else {
			result="error";
		}
		return result;
	}
}
