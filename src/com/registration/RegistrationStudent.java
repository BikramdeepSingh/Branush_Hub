package com.registration;

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
 * Servlet implementation class Registration
 */
@WebServlet("/RegistrationStudent")
public class RegistrationStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;	
	private String name=null;
	private String email=null;
	private String phoneNumber=null;
	private String dob=null;
	private String address=null;
	private String pass=null;
	private String confirmPass=null;
	private String securityQues=null;
	private String aadhaarNo=null;
	
	static private Connection con=null;
	static private PreparedStatement ps=null;
	static private ResultSet rs=null;
	private boolean emailTaken=false;
	private boolean aadhaarTaken=false;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		name=request.getParameter("Name");
		email=request.getParameter("Email");
		phoneNumber=request.getParameter("phoneNumber");
		dob=request.getParameter("dob");
		address=request.getParameter("address");
		pass=request.getParameter("pass");
		confirmPass=request.getParameter("confirmPass");
		securityQues=request.getParameter("securityQues");
		aadhaarNo=request.getParameter("aadhaarNo");
		
		boolean result=Verhoeff.validateVerhoeff(aadhaarNo);
		String msg =String.valueOf(result);
		if(msg=="true") {
			System.out.println("Aadhaar number is correct");
			if(pass.equals(confirmPass)) {
				try {
					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub","root","Mylaptop@99");
					System.out.println("Connection Established");
					ps=con.prepareStatement("");
					String verifyUser="select * from branushhub.emailandaadhar where email='"+email+"' or aadhaar='"+aadhaarNo+"'";
					rs=ps.executeQuery(verifyUser);
					//System.out.println("a");
					if(rs.next()) {
						emailTaken=true;
						aadhaarTaken=true;
						//System.out.println("b");
					}
					if(!emailTaken && !aadhaarTaken) {
						//System.out.println("c");
						ps.executeUpdate("insert into studentlogin(name, email, phno, date, address, password, favouritesport, aadhaar) values('"+name+"', '"+email+"', '"+phoneNumber+"', '"+dob+"', '"+address+"', '"+pass+"', '"+securityQues+"', '"+aadhaarNo+"') ");
						System.out.println("Details Uploaded on studentlogin");
						ps.executeUpdate("insert into branushhub.emailandaadhar(email, aadhaar) values('"+email+"', '"+aadhaarNo+"') ");
						System.out.println("Details Uploaded on emailandaadhaar");
						response.sendRedirect("./JSP/LoginStudent.jsp");
					}else {
						System.out.println("E-mail or Aadhaar already taken");
						response.sendRedirect("./JSP/AadhaarTaken.jsp");
					}
				}catch(Exception ex) {
					System.out.println("Registration "+ex.getMessage());
					response.sendRedirect("./JSP/Error.jsp");
				}
			}
			else {
				System.out.println("Passwords don't match");
				response.sendRedirect("./JSP/PasswordsDontMatch.jsp");
			}	
		}
		else {
			System.out.println("Invalid Aadhaar Number ");
			response.sendRedirect("./JSP/InvalidAadhaar.jsp");
		}
		
		
	}
}
