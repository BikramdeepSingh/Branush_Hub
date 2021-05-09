package com.userVerification;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Verify_User {
	
	private String userName=null;
	private String password=null;
	private static Connection con=null;
	private static PreparedStatement ps=null, ps1=null;
	private static ResultSet rs =null, rs1=null;
	public boolean banOrNot=false;
	
	public void setUserName(String uname) {
		userName=uname;
	}
	public void setPassword(String pass) {
		password=pass;
	}
	
	public String getUserName() {
		return userName;
	}
	public String getPassword() {
		return password;
	}
		
	
	public boolean verifyUser(String user) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite", "root" , "Mylaptop@99");	
			System.out.println("Connection Established...");
			ps=con.prepareStatement("");
			
		
		if(user.equals("StudentLogin")) {
			ps1=con.prepareStatement("");
			String banstatus="select * from banstatus where username='"+userName+"'";
			rs1=ps1.executeQuery(banstatus);
			if(rs1.next()) {
				banOrNot=true;
				return false;
			}
			String query="Select * from dialownsuite.studentlogin where username='"+userName+"' and password='"+password+"'";
			rs=ps.executeQuery(query);
			if(rs.next()) { 
				return true;
			}
		}
		else if(user.equals("AdminLogin")) {
			String query="Select * from dialownsuite.adminlogin where username='"+userName+"' and password='"+password+"'";
			rs=ps.executeQuery(query);
			if(rs.next()) { 
				return true;
			}
		}
		else if(user.equals("TeacherLogin")) {
			String query="Select * from dialownsuite.teacherlogin where username='"+userName+"' and password='"+password+"'";
			rs=ps.executeQuery(query);
			if(rs.next()) { 
				return true;
			}
		}
		
		}catch (Exception e) {
			System.out.println("verifyUser "+e.getMessage());
			}
		return false;
	}
	
}
