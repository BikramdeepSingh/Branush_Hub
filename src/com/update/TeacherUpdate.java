package com.update;

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
 * Servlet implementation class TeacherUpdate
 */
@WebServlet("/TeacherUpdate")
public class TeacherUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String phoneNumber=null;
	private String address=null;
	private String pass=null;
	private String confirmPass=null;
	private String email=null;
	static private Connection con=null;
	static private PreparedStatement ps=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		email=request.getParameter("email");
		phoneNumber=request.getParameter("phonenumber");
		address=request.getParameter("address");
		pass=request.getParameter("pass");
		confirmPass=request.getParameter("Cpass");
		
			if(pass.equals(confirmPass)) 
			{
				try 
				{
					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub","root","Mylaptop@99");
					System.out.println("Connection Established");
					ps=con.prepareStatement("update teacherlogin set phno='"+phoneNumber+"', address=' "+address+"' , password='"+pass+"' where  email='"+email+"'");
					ps.executeUpdate();
					response.sendRedirect("./JSP/MainPageTeacher.jsp");
				}
				catch(Exception ex) 
				{
					System.out.println("Registration "+ex.getMessage());
					response.sendRedirect("./JSP/Error.jsp");
				}
			}
			else
			{
				System.out.println("password is wrong");
			}
		}

}
