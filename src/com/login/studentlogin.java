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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class studentlogin
 */
@WebServlet("/studentlogin")
public class studentlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static private Connection con=null;
	static private PreparedStatement ps=null;
	static private ResultSet rs=null;
	
	static private PreparedStatement ps1=null;
	static private ResultSet rs1=null;
	
	private String email=null;
	private String pass=null;

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		email=request.getParameter("email");
		pass=request.getParameter("pass");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub","root","Mylaptop@99");
			System.out.println("Connection Established");
			ps=con.prepareStatement("");
			ps1=con.prepareStatement("");
			String query="select * from studentlogin where email='"+email+"' and password='"+pass+"'";
			String query1="select * from banstudent where email='"+email+"'";
			rs=ps.executeQuery(query);
			rs1=ps1.executeQuery(query1);
			if(rs1.next())
			{
				response.sendRedirect("./JSP/Ban.jsp");
			}
			else
			{
				if(rs.next())
				{
					HttpSession session = request.getSession();
					session.setAttribute("name",rs.getString("name"));
					session.setAttribute("username",rs.getString("email"));
					session.setAttribute("phno",rs.getString("phno"));
					session.setAttribute("address",rs.getString("address"));
					session.setAttribute("date",rs.getString("date"));
					session.setAttribute("password",rs.getString("password"));
					session.setAttribute("favouriteSport",rs.getString("favouritesport"));
					session.setAttribute("aadhaar",rs.getString("aadhaar"));
					
					response.sendRedirect("./JSP/MainPageStudent.jsp");
				}
				else
					response.sendRedirect("./JSP/Error.jsp");
				}
			
		}catch(Exception ex) {
			System.out.println("Registration "+ex.getMessage());
			response.sendRedirect("./JSP/Error.jsp");
		}
		
	}
	

}
