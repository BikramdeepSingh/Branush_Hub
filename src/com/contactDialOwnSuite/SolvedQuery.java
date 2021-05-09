package com.contactDialOwnSuite;

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
 * Servlet implementation class SolvedQuery
 */
@WebServlet("/SolvedQuery")
public class SolvedQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	static private Connection con=null;
	static private PreparedStatement ps=null;
	static private ResultSet rs=null;
    private int id=0;
    private String name=null;
	private String email=null;
	private String phone=null;
	private String message=null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		id=Integer.parseInt(request.getParameter("query"));
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite","root","Mylaptop@99");
			System.out.println("Connection Established");
			ps=con.prepareStatement("");
			String query="select * from dialownsuite.contactus where QueryId="+id;
			rs=ps.executeQuery(query);
			if(rs.next()) {
				name=rs.getString("Name");
				email=rs.getString("Email");
				phone=rs.getString("PhoneNumber");
				message=rs.getString("Message");
				String query1="insert into solvedquery(Id,Name,Email,PhoneNumber,Message) values('"+id+"', '"+name+"', '"+email+"', '"+phone+"', '"+message+"')";
				ps.executeUpdate(query1);
				
				String delete="delete from dialownsuite.contactus where QueryId="+id;
				ps.executeUpdate(delete);
	            response.sendRedirect("HomePage.jsp");
			}
			else
			{
				System.out.println("Query ID not found");
	            response.sendRedirect("Error.jsp");
			}
		}catch(Exception ex) {
			System.out.println("ContactUs "+ex.getMessage());
            response.sendRedirect("Error.jsp");
		}
	}

}
