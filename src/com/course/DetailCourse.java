	package com.course;

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DetailCourse
 */
@WebServlet("/DetailCourse")
public class DetailCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static private Connection con=null;
	static private PreparedStatement ps=null;
	static private ResultSet rs=null;
	
	private String name=null;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		name=request.getParameter("name");
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub","root","Mylaptop@99");
			System.out.println("Connection Established");
			ps=con.prepareStatement("");
			String query="select * from viewcourse where name='"+name+"'";
			rs=ps.executeQuery(query);
			if(rs.next())
			{
				HttpSession session = request.getSession();
				session.setAttribute("url",rs.getString("url"));
				
				response.sendRedirect("./JSP/VideoPlayer.jsp");
			}
		}	
		catch(Exception ex) {
			System.out.println("Registration "+ex.getMessage());
			response.sendRedirect("./JSP/Error.jsp");
		}
	}
}
