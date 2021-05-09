package com.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterTeacher
 */
@WebServlet("/RegisterTeacher")
public class RegisterTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String email=null;
	private String name=null;
	private String username=null;
	private String phoneNumber=null;
	private String qualification=null;
	private String dob=null;
	private String pass=null;
	private String confirmPass=null;
	private String address=null;
	static private Connection con=null;
	static private PreparedStatement ps=null;
	static private ResultSet rs=null;
	private boolean emailTaken=false;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		email=request.getParameter("email");
		name=request.getParameter("name");
		qualification=request.getParameter("qualification");
		username=email;
		phoneNumber=request.getParameter("phone");
		dob=request.getParameter("dob");
		pass=request.getParameter("pass");
		confirmPass=request.getParameter("confirmPass");
		address=request.getParameter("address");
		if(pass.equals(confirmPass)) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite","root","Mylaptop@99");
				System.out.println("Connection Established");
				ps=con.prepareStatement("");
				String verifyUser="select * from teacherlogin where email='"+email+"'";
				rs=ps.executeQuery(verifyUser);
				if(rs.next()) {
					emailTaken=true;
				}
				if(!emailTaken) {
					ps.executeUpdate("insert into teacherlogin(username, password, name, email, phoneNumber, dob, qualification, address) values('"+username+"', '"+pass+"', '"+name+"', '"+email+"', '"+phoneNumber+"', '"+dob+"', '"+qualification+"', '"+address+"') ");
					System.out.println("Details Uploaded");
					response.sendRedirect("AdminHomePage.jsp#view-teacher");
				}else {
					System.out.println("E-mail/UserName already taken");
					response.sendRedirect("AdminHomePage.jsp#add-teacher");
				}
			}catch(Exception ex) {
				System.out.println("RegisterTeacher "+ex.getMessage());
			}
		}
		else {
			System.out.println("Passwords don't match");
			response.sendRedirect("Register.jsp");
		}
		
	}

}
