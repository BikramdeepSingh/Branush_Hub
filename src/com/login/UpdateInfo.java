package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateInfo
 */
@WebServlet("/UpdateInfo")
public class UpdateInfo extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	static private Connection con=null;
	static private PreparedStatement ps=null;
	private String tableName=null;
	private String errorPageToBeLoaded=null;
	private String pageToBeReloaded=null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String confirmPass=null;
		String username=null;
		String phone=null;
		String address=null;
		String password=null;
		String name=null;
		String button=request.getParameter("button");
		
		if(button.equals("studentlogin")) {
			tableName="studentlogin";
			pageToBeReloaded="StudentHomePage.jsp";
			errorPageToBeLoaded="StudentHomePage.jsp#Edit-profile";
			username=request.getParameter("userName1");
			name=request.getParameter("name1");
			phone=request.getParameter("phoneno1");
			address=request.getParameter("address1");
			password=request.getParameter("pass1");
			confirmPass=request.getParameter("confirmPass1");
		}
		else if(button.equals("adminlogin")) {
			tableName="adminlogin";
			pageToBeReloaded="AdminHomePage.jsp";
			errorPageToBeLoaded="AdminHomePage.jsp#Edit-profile";
			username=request.getParameter("userName");
			name=request.getParameter("name");
			phone=request.getParameter("phoneno");
			address=request.getParameter("address");
			password=request.getParameter("pass");
			confirmPass=request.getParameter("confirmPass");
		}
		else if(button.equals("teacherlogin")) {
			tableName="teacherlogin";
			pageToBeReloaded="TeacherHomePage.jsp";
			errorPageToBeLoaded="TeacherHomePage.jsp#Edit-profile";
			username=request.getParameter("userName2");
			name=request.getParameter("name2");
			phone=request.getParameter("phoneno2");
			address=request.getParameter("address2");
			password=request.getParameter("pass2");
			confirmPass=request.getParameter("confirmPass2");
		}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite","root","Mylaptop@99");
			System.out.println("Connection Established");
			ps=con.prepareStatement("");
			if(password.equals(confirmPass)) {
			String query="update "+tableName+" set name='"+name+"', phoneNumber='"+phone+"' , address='"+address+"', password='"+password+"' where username='"+username+"'";
			
			ps.executeUpdate(query);
			
			response.sendRedirect(pageToBeReloaded);
			}
			else {
				System.out.println("password doesn't match");
				response.sendRedirect(errorPageToBeLoaded);
			}
		}catch(Exception ex) {
			System.out.println("UpdateInfo :"+ex.getMessage());
		}
	}

}
