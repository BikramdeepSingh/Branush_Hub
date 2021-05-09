package com.contactDialOwnSuite;

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
 * Servlet implementation class ContactUs
 */
@WebServlet("/ContactUs")
public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private String name=null;
	private String email=null;
	private String phone=null;
	private String message=null;
	static private Connection con=null;
	static private PreparedStatement ps=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		name=request.getParameter("name");
		email=request.getParameter("email");
		phone=request.getParameter("phone");
		message=request.getParameter("message");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite","root","Mylaptop@99");
			System.out.println("Connection Established");
			ps=con.prepareStatement("");
			String query="insert into contactus(Name,Email,PhoneNumber,Message) values('"+name+"', '"+email+"', '"+phone+"', '"+message+"')";
			ps.executeUpdate(query);
            response.sendRedirect("HomePage.jsp");
		}catch(Exception ex) {
			System.out.println("ContactUs "+ex.getMessage());
		}
	}

}
