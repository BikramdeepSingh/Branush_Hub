package com.banUnban;

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
 * Servlet implementation class BanStatus
 */
@WebServlet("/BanStatus")
public class BanStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static private Connection con=null;
	static private PreparedStatement ps=null;  
    private String username=null;
    private String reason=null;
    private String button=null;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		button=request.getParameter("button");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite","root","Mylaptop@99");
			System.out.println("Connection Established");
			ps=con.prepareStatement("");
			if(button.equals("ban")) {
				username=request.getParameter("username");
				reason=request.getParameter("reason");
				String query="insert into banstatus(username, reason) values('"+username+"', '"+reason+"') ";
				ps.executeUpdate(query);
				System.out.println(query);
				response.sendRedirect("AdminHomePage.jsp#ban-students");
			}
			else if(button.equals("unban")) {
				username=request.getParameter("username");
				String query="delete from banstatus where username='"+username+"' ";
				ps.executeUpdate(query);
				response.sendRedirect("AdminHomePage.jsp#ban-students");
			}
		}catch(Exception ex) {
			System.out.println("BanStatus :"+ex.getMessage());
		}	
	}

}
