package com.upload;

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
 * Servlet implementation class CourseUpdate
 */
@WebServlet("/CourseUpdate")
public class CourseUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	static private Connection con=null;
	static private PreparedStatement ps=null;
	
	private String email=null;
	private String course=null;
	private String link=null;

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		email=request.getParameter("email");
		course=request.getParameter("course");
		link=request.getParameter("link");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub","root","Mylaptop@99");
			System.out.println("Connection Established");
			ps=con.prepareStatement("insert into branushhub.viewcourse(name, email, url) values ('"+course+"','"+email+"','"+link+"')");
			ps.executeUpdate();
			response.sendRedirect("./JSP/MainPageTeacher.jsp");
			
		}catch(Exception ex) {
			System.out.println("Registration "+ex.getMessage());
			response.sendRedirect("./JSP/Error.jsp");
		}
		
	}
}
