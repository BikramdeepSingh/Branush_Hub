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
 * Servlet implementation class forgotpassword
 */
@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	static private Connection con=null;
	static private PreparedStatement ps=null;
	static private ResultSet rs=null;
	static private PreparedStatement ps1=null;
	static private ResultSet rs1=null;
	
	private String email=null;
	private String securityQues=null;
	private String newPass=null;
	private String confirmPass=null;
	private String aadhaar=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		email=request.getParameter("email");
		securityQues=request.getParameter("securityQues");
		newPass=request.getParameter("pass");
		confirmPass=request.getParameter("passconfig");
		aadhaar=request.getParameter("aadhaar");
		
		
		if(newPass.equals(confirmPass)) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub","root","Mylaptop@99");
				System.out.println("Connection Established");
				ps=con.prepareStatement("");
				ps1=con.prepareStatement("");
				String verifyStudent="select * from studentlogin where email='"+email+"' and favouritesport='"+securityQues+"' and aadhaar='"+aadhaar+"'";
				rs=ps.executeQuery(verifyStudent);
								
				if(rs.next()) {
					String updateQuery="update studentlogin set password='"+newPass+"' where  email='"+email+"' ";
					ps.executeUpdate(updateQuery);
					response.sendRedirect("./JSP/LoginStudent.jsp");
				}
				else {
					String verifyTeacher="select * from branushhub.teacherlogin where email='"+email+"' and favouriteSport='"+securityQues+"' and aadhaar='"+aadhaar+"'";
					System.out.println("1");
					rs1=ps1.executeQuery(verifyTeacher);
					if(rs1.next()) {
						String updateQuery="update teacherlogin set password='"+newPass+"' where  email='"+email+"' ";
						ps.executeUpdate(updateQuery);
						response.sendRedirect("./JSP/LoginTeacher.jsp");
					}
					else {
						response.sendRedirect("./JSP/Error.jsp");
					}
				}
			}catch(Exception ex) {
				System.out.println("ForgotPassword: "+ex.getMessage());
				response.sendRedirect("./JSP/Error.jsp");
			}
		}
		else {
			System.out.println("Passwords don't match");
		}
	}

}
