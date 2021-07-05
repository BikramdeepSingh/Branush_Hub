package com.ban;

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
 * Servlet implementation class UnbanStudent
 */
@WebServlet("/UnbanStudent")
public class UnbanStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String email=null;
	@SuppressWarnings("unused")
	private String reason=null;
	static private Connection con=null;
	static private PreparedStatement ps=null;
	@SuppressWarnings("unused")
	static private ResultSet rs=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		email=request.getParameter("email");
			try 
			{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub","root","Mylaptop@99");
				System.out.println("Connection Established");
				ps=con.prepareStatement("");
				ps.executeUpdate("delete from banstudent where email='"+email+"'");
				response.sendRedirect("./JSP/MainPageAdmin.jsp");
			}
			catch(Exception ex) 
			{
				System.out.println("Registration "+ex.getMessage());
				response.sendRedirect("./JSP/Error.jsp");
			}
	}

}
