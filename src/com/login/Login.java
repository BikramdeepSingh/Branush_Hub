package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.userVerification.Verify_User;

/**
 * Servlet implementation class Login
 */
@SuppressWarnings("serial")
@WebServlet("/Login")
public class Login extends HttpServlet {
	static String uname =null;
	static String pass =null;
	static String button=null;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
		Verify_User vu=new Verify_User();
		
		
		
		uname = request.getParameter("uname");
		pass = request.getParameter("pass");
		button= request.getParameter("button");
		
		vu.setUserName(uname);
		vu.setPassword(pass);
		
		boolean isValidUser=false;
		
		
		log(uname);
		log(pass);
		log(button);
		
		isValidUser=vu.verifyUser(button);
		
		if(button.equals("AdminLogin")) {
			if(isValidUser)
				{
				GetUserInfo gui=new GetUserInfo(uname,"adminlogin");
				HttpSession session= request.getSession();
				session.setAttribute("username", uname);
				session.setAttribute("name", gui.getName());
				
				session.setAttribute("phone", gui.getPhone());
				session.setAttribute("address", gui.getAddress());
				session.setAttribute("pass", gui.getPass());
				response.sendRedirect("AdminHomePage.jsp"); 
				}
			else
				{ response.sendRedirect("LoginMain.jsp"); }
		}
		else if(button.equals("StudentLogin")) {
			if(isValidUser)
				{
				GetUserInfo gui=new GetUserInfo(uname,"studentlogin");
				HttpSession session= request.getSession();
				session.setAttribute("username1", uname);
				session.setAttribute("name1", gui.getName());
				session.setAttribute("dob1", gui.getDOB());
				session.setAttribute("phone1", gui.getPhone());
				session.setAttribute("address1", gui.getAddress());
				session.setAttribute("pass1", gui.getPass());
				response.sendRedirect("StudentHomePage.jsp"); 
				}
			else
				{
					if(vu.banOrNot) {
						response.sendRedirect("Ban.jsp");
					}
					else {
						response.sendRedirect("LoginMain.jsp"); 
					}
				} 
		}
		else if(button.equals("TeacherLogin")) {
			if(isValidUser)
				{
				GetUserInfo gui=new GetUserInfo(uname,"teacherlogin");
				HttpSession session= request.getSession();
				session.setAttribute("username2", uname);
				session.setAttribute("name2", gui.getName());
				session.setAttribute("dob2", gui.getDOB());
				session.setAttribute("phone2", gui.getPhone());
				session.setAttribute("address2", gui.getAddress());
				session.setAttribute("pass2", gui.getPass());
				response.sendRedirect("TeacherHomePage.jsp"); 
				}
			else
				{
				response.sendRedirect("LoginMain.jsp"); 
				}
		}
		
	}
	
	
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}*/


