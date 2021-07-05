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


@WebServlet("/RegistrationTeacher")
public class RegistrationTeacher extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private String name=null;  
	private String email=null;
	private String phoneNumber=null;
	private String dob=null;
	private String address=null;
	private String pass=null;
	private String securityQues=null;
	private String aadhaar=null;
	
	static private Connection con=null;
	static private PreparedStatement ps=null;
	static private ResultSet rs=null;
	private boolean emailTaken=false;
	private boolean aadhaarTaken=false;
	
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		
    		name=request.getParameter("name");
    		email=request.getParameter("email");
    		phoneNumber=request.getParameter("phonenumber");
    		dob=request.getParameter("date");
    		address=request.getParameter("address");
    		pass=request.getParameter("pass");
    		securityQues=request.getParameter("securityQues");
    		aadhaar=request.getParameter("aadhaar");;
    				
    		boolean result=Verhoeff.validateVerhoeff(aadhaar);
    		String msg =String.valueOf(result);
    		if(msg=="true") {
    			try {
    				Class.forName("com.mysql.jdbc.Driver");
    				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub","root","Mylaptop@99");
    				System.out.println("Connection Established");
    				ps=con.prepareStatement("");
    				String verifyUserEmail="select * from branushhub.emailandaadhar where email='"+email+"' or aadhaar='"+aadhaar+"'";
    				rs=ps.executeQuery(verifyUserEmail);
    				//System.out.println("a");
    				if(rs.next()) {
    					emailTaken=true;
    					aadhaarTaken=true;
    					//System.out.println("b");
    				}
    				if(!emailTaken && !aadhaarTaken) {
    					//System.out.println("c");
    					ps.executeUpdate("insert into teacherlogin(name, email, phno, date, address, password, favouriteSport, aadhaar) values('"+name+"', '"+email+"', '"+phoneNumber+"', '"+dob+"', '"+address+"', '"+pass+"', '"+securityQues+"', '"+aadhaar+"') ");
    					System.out.println("Details Uploaded on teacherlogin");
    					ps.executeUpdate("insert into branushhub.emailandaadhar(email, aadhaar) values('"+email+"', '"+aadhaar+"') ");
    					System.out.println("Details Uploaded on emailandaadhaar");
    					
    					response.sendRedirect("./JSP/MainPageAdmin.jsp");
    				}
    				else {
    					System.out.println("E-mail or Aadhaar already taken");
    					response.sendRedirect("./JSP/AadhaarTaken.jsp");
    					
    				}
    			}catch(Exception ex) {
    				System.out.println("Registration "+ex.getMessage());
    				response.sendRedirect("./JSP/Error.jsp");
    			}
    		}
    		else {
    			System.out.println("Invalid Aadhaar Number ");
    			response.sendRedirect("./JSP/InvalidAadhaar.jsp");
    		}
    				
    			
    		
    	}
}

