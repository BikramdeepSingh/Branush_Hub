package com.uploadTeacherData;

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
 * Servlet implementation class CourseNotesEntry
 */
@WebServlet("/CourseNotesEntry")
public class CourseNotesEntry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String userName=null;
	private String subject=null;
	private String driveLink=null;
	private String button=null;
	private String tableName=null;
	static private Connection con=null;
	static private PreparedStatement ps=null;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		button=request.getParameter("button");
		if(button.equals("SubmitNotes")) {
			tableName="notes";
			userName=request.getParameter("user");
			subject=request.getParameter("subject");
			driveLink=request.getParameter("subjectDrive");
		}
		else if(button.equals("SubmitCourses")) {
			tableName="courses";
			userName=request.getParameter("user1");
			subject=request.getParameter("course");
			driveLink=request.getParameter("courseDrive");
		}
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite","root","Mylaptop@99");
			System.out.println("Connection Established");
			ps=con.prepareStatement("");
			
			String query="insert into "+tableName+"(username,topic,driveLink) values('"+userName+"', '"+subject+"', '"+driveLink+"' )";
			ps.executeUpdate(query);
			response.sendRedirect("TeacherHomePage.jsp");
			
		}catch(Exception ex) {
			System.out.println("CourseNotesEntry :"+ex.getMessage());
		}
		
	}

}
