package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GetUserInfo {
	private String Name=null;
	private String PhoneNumber=null;
	private String DOB=null;
	private String Address=null;
	private String pass=null;
	static private Connection con=null;
	static private PreparedStatement ps=null;
	static private ResultSet rs=null;
	
	GetUserInfo(String username, String tableName){
		if(username.equals("admin")) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite","root","Mylaptop@99");
				System.out.println("Connection Established");
				ps=con.prepareStatement("");
				String query="Select * from "+tableName+" where username='"+username+"'";
				
				
				
				rs=ps.executeQuery(query);
				if(rs.next()) {
					Name=rs.getString("name");
					PhoneNumber=rs.getString("phoneNumber");
					Address=rs.getString("address");
					pass=rs.getString("password");
				}
			}catch(Exception ex) {
				System.out.println("GetUserInfo :"+ex.getMessage());
			}
		}
		else {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite","root","Mylaptop@99");
			System.out.println("Connection Established");
			ps=con.prepareStatement("");
			String query="Select * from "+tableName+" where username='"+username+"'";
			
			
			
			rs=ps.executeQuery(query);
			if(rs.next()) {
				Name=rs.getString("name");
				PhoneNumber=rs.getString("phoneNumber");
				DOB=rs.getString("dob");
				Address=rs.getString("address");
				pass=rs.getString("password");
			}
		}catch(Exception ex) {
			System.out.println("GetUserInfo :"+ex.getMessage());
		}
		}
	}
	public String getName() {
		return Name;
	}
	public String getPhone() {
		return PhoneNumber;
	}
	public String getDOB() {
		return DOB;
	}
	public String getAddress() {
		return Address;
	}
	public String getPass() {
		return pass;
	}
}
