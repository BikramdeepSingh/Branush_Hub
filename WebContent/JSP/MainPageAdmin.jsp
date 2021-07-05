<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- DOCTYPE html -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Admin</title>
    <link rel="icon" type="image" href="../Image/favicon32.png">
    <link rel="stylesheet" href="../CSS/MainPage.css" />
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
    />
  </head>
  <body>
  <%
  		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
		response.setHeader("Pragma","no-cache");//HTTP 1.0
		response.setHeader("Expires","0");//Proxies
  		
  		if(session.getAttribute("username")==null)
  		{
  			response.sendRedirect("./LoginMain.jsp");
  		}
  %>
    <div class="mediaquery">
      <h1>
        Please turn on Desktop View to Access the site.
      </h1>
    </div>
    <nav>
      <div class="navbar">
        <div class="logo">
          <h1>
            Branush Hub
          </h1>
        </div>
        <div class="nav-links">
          <i id="sun" class="fas fa-sun"></i>
          <label class="switch">
            <input type="checkbox">
            <span class="slider round"></span>
          </label>
        </div>
      </div>
    </nav>
    <div class="middle">
      <div class="menu">
        <li class="item" id="profile">
          <a href="#profile" class="btn"
            ><i class="fas fa-users-cog"></i>Profile</a
          >
          <div class="smenu">
            <a href="#details">Details</a>
            <a href="#Edit-profile">Edit</a>
          </div>
        </li>

        <li class="item" id="student">
          <a href="#student" class="btn"><i class="far fa-user"></i>Students</a>
          <div class="smenu">
            <a href="#view-student">View Students</a>
            <a href="#ban-students">Ban Students</a>
          </div>
        </li>

        <li class="item" id="teacher">
          <a href="#teacher" class="btn"
            ><i class="fas fa-chalkboard-teacher"></i>Teacher</a
          >
          <div class="smenu">
            <a href="#view-teacher">View Teachers</a>
            <a href="#add-teacher">Add Teacher</a>
          </div>
        </li>
        <li class="item" id="course">
          <a href="#course" class="btn"><i class="fas fa-video"></i>Courses</a>
          <div class="smenu">
            <a href="./Course.jsp">View Courses</a>
          </div>
          <div class="smenu">
            <a href="https://drive.google.com/drive/folders/1o98sExQjgEVwaFgvTKbXjM2baNfgL7l9?usp=sharing">Upload Courses</a>
          </div>
        </li>
        <li class="item" id="college">
          <a href="#college" class="btn"
            ><i class="fas fa-graduation-cap"></i>College Resourse</a
          >
          <div class="smenu">
            <a href="./Notes.jsp">View/Upload Notes</a>  
          </div>
        </li>
        
         <li class="item" id="upload">
          <a href="#upload" class="btn"
            ><i class="fas fa-upload"></i>Uploaded Material</a
          >
          <div class="smenu">
            <a href="#upload-notes">Notes</a> 
            <a href="#upload-course">Course</a>  
          </div>
        </li>
         <li class="item" id="contact">
          <a href="#contact" class="btn"
            ><i class="fas fa-graduation-cap"></i>Contact</a>
          <div class="smenu">
            <a href="#contact-info">Info</a>   
          </div>
        </li>
        
        <li class="item">
          <a class="btn" href="./Logout.jsp"><i class="fas fa-sign-out-alt"></i>Log out</a>
        </li>
      </div>
    </div>
    <div class="main-content">
      <div class="profile" id="profile">
        <div class="Details" id="details">
          <h1>Details</h1>
          <div class="details-section">
            <div class="Admin-details">
              <!--  <div class="photo-of-admin"></div>  -->
              <label for="Name">Name</label>
              <input type="text" class="readonlyname" value="${name}" readonly>
              <label for="email">Email</label>
              <input type="email" class="readonlyemail" value="${username}" readonly>
              <label for="Tel">Phone No.</label>
              <input type="tel" class="readonlytel" value="${phno}" readonly>
              <label for="exp">D.O.B</label>
              <input type="text" value="${date}" readonly>
              <label for="Address">Address</label>
              <input type="text" value="${address}" readonly>
              <label for="Aadhaar">Aadhaar</label>
              <input type="text" value="${aadhaar}" readonly>
              <a href="#Edit-profile" class="editde">Change Credentials</a>
            </div>
          </div>  
        </div>
        <div class="Edit-profile" id="Edit-profile">
        <form action="../AdminUpdate" method="post">
          <h1>Edit Profile</h1>
          <div class="edit-details">
            <label>Username</label>
             <input type="text" class="changename" name="email" value="${username}" placeholder="Name" readonly>
            <label>Phone Number</label>
             <input type="tel" class="changeemail" name="phonenumber" value="${phno}" placeholder="PhoneNumber." minlength="10" maxlength="10" >
            <label>Address</label>
             <input type="text" class="changetel" name="address" value="${address}" placeholder="Address" >
            <label>Change Password</label>
             <input type="password" value="${password}" name="pass" placeholder="Password">
            <label>Confirm Password</label>
             <input type="password"  value="${password}" name="Cpass" placeholder="Comfirm Password">
            <input type="submit" value="Change Credentials" />
            </div>
            </form>
        </div>
      </div>
      <div class="student">
        <div class="view-student" id="view-student">
          <h1>View Students</h1>
          <div class="stu-table">
<%
	try
	{	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub", "root" , "Mylaptop@99");	
			System.out.println("Connection Established...");
			 PreparedStatement ps=con.prepareStatement("");
			String query="Select email,name,phno,date,address from branushhub.studentlogin ";
			ResultSet rs=ps.executeQuery(query);
%>
			<table border='1'> 
			<tr>
                <th style="text-align:center; ">UserName</th>
                <th style="text-align:center; ">Name</th>
                <th style="text-align:center; ">Phone Number</th>
                <th style="text-align:center; ">Date of Birth</th>
                <th style="text-align:center; ">Address</th>
              </tr>
<% 			
			 while(rs.next()) 
			 {
%>
			<tr> 
				<td><%= rs.getString(2)%> </td>
				<td> <%=rs.getString(1)%> </td>
				<td> <%= rs.getString(3)%> </td>
				<td><%= rs.getString(4)%> </td>
				<td> <%= rs.getString(5)%> </td>
			</tr>
<%
			 }
%>
			
		</tbody>
		</table>
			
<%
		}
			catch (Exception e) {
			e.printStackTrace();
		}
%>
          </div>
        </div>
        <div class="ban-student" id="ban-students">
          <h1>Ban Students</h1>
          <div class="ban-table">
<%
	try
	{	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub", "root" , "Mylaptop@99");	
			System.out.println("Connection Established...");
			 PreparedStatement ps=con.prepareStatement("");
			String query="Select email,reason from branushhub.banstudent ";
			ResultSet rs=ps.executeQuery(query);
%>
			<table border='1'> 
			<tr>
                <th style="text-align:center; ">UserName</th>
                <th style="text-align:center; ">Reason</th>
              </tr>
<% 			
			 while(rs.next()) 
			 {
%>
			<tr> 
				<td><%= rs.getString(1)%> </td>
				<td> <%=rs.getString(2)%> </td>
			</tr>
<%
			 }
%>
			
		</tbody>
		</table>
			
<%
		}
			catch (Exception e) {
			e.printStackTrace();
		}
%>
       </div>
       <div class="ban-unban">
       <div class="unban">
       <form action="../BanStudent" method="post">
        <h2>Ban a Student</h2>
         <div class="unban-table">
          <input type="text" required name="email" placeholder="Username">
          <input type="text" required name="reason" placeholder="Reason">
          <input type="submit" value="Ban" />
        </div>
            </form>
      </div>
       <div class="unban">
       <form action="../UnbanStudent" method="post">
        <h2>Unban a Student</h2>
         <div class="unban-table">
          <input type="text" required name="email"placeholder="Username">
          <input type="submit" value="Unban" />
        </div>
          </form>
      </div>
    </div>
     </div>
   </div>
   <div class="teacher">
     <div class="view-teacher" id="view-teacher">
       <h1>View Teacher</h1>
       <div class="teacher-table">
<%
	try
	{	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub", "root" , "Mylaptop@99");	
			System.out.println("Connection Established...");
			 PreparedStatement ps=con.prepareStatement("");
			String query="Select email,name,phno,date,address from branushhub.teacherlogin ";
			ResultSet rs=ps.executeQuery(query);
%>
			<table border='1'> 
			<tr>
                <th style="text-align:center; ">UserName</th>
                <th style="text-align:center; ">Name</th>
                <th style="text-align:center; ">Phone Number</th>
                <th style="text-align:center; ">Date of Birth</th>
                <th style="text-align:center; ">Address</th>
              </tr>
<% 			
			 while(rs.next()) 
			 {
%>
			<tr> 
				<td><%= rs.getString(2)%> </td>
				<td> <%=rs.getString(1)%> </td>
				<td> <%= rs.getString(3)%> </td>
				<td><%= rs.getString(4)%> </td>
				<td> <%= rs.getString(5)%> </td>
			</tr>
<%
			 }
%>
			
		</tbody>
		</table>
			
<%
		}
			catch (Exception e) {
			e.printStackTrace();
		}
%>
       </div>
     </div>
      <div class="add-teacher" id="add-teacher">
          <h1>Add Teacher</h1>
          <div class="add-teacher-table">
            <form action="../RegistrationTeacher" method="post">
            <input type="text" required placeholder="Name of the Teacher" name="name">
            <input type="text" required placeholder="Email" name="email">
            <input type="date" required  name="date">
            <input type="tel" required placeholder="Phone no." name="phonenumber">
            <input type="password" required placeholder="Create Password" name="pass">
            <input type="text" required placeholder="Address" name="address">
            <input type="text" required placeholder="Favourite sport" name="securityQues">
            <input type="text" required placeholder="Aadhaar Number" name="aadhaar" minlength="12" maxlength="12">
            <input type="submit" value="Submit">
           </form>
          </div>
        </div>
      </div>
      
     <div class="upload-notes" id="upload-notes">
       <h1>Uploaded Notes</h1>
       <div class="teacher-table">
<%
	try
	{	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub", "root" , "Mylaptop@99");	
			System.out.println("Connection Established...");
			 PreparedStatement ps=con.prepareStatement("");
			String query="Select * from branushhub.uploadnotes ";
			ResultSet rs=ps.executeQuery(query);
%>
			<table border='1'> 
			<tr>
				<th style="text-align:center; ">Note ID</th>
				<th style="text-align:center; ">Username</th>
                <th style="text-align:center; ">Subject</th>
                <th style="text-align:center; ">Drive Link</th>
              </tr>
<% 			
			 while(rs.next()) 
			 {
%>
			<tr> 
				<td> <%=rs.getString(1)%> </td>
				<td> <%=rs.getString(3)%> </td>
				<td> <%=rs.getString(2)%> </td>
				<td><%= rs.getString(4)%> </td>
			</tr>
<%
			 }
%>
			
		</tbody>
		</table>
			
<%
		}
			catch (Exception e) {
			e.printStackTrace();
		}
%>
       </div>
     </div>
     
	<div class="upload-course" id="upload-course">
	 <h1>Uploaded Courses</h1>
       <div class="teacher-table">
<%
	try
	{	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub", "root" , "Mylaptop@99");	
			System.out.println("Connection Established...");
			 PreparedStatement ps=con.prepareStatement("");
			String query="Select * from branushhub.viewcourse ";
			ResultSet rs=ps.executeQuery(query);
%>
			<table border='1'> 
			<tr>
				<th style="text-align:center; ">Course ID</th>
				<th style="text-align:center; ">Username</th>
				<th style="text-align:center; ">Course Name</th>
                <th style="text-align:center; ">Drive Link/URL</th>
              </tr>
<% 			
			 while(rs.next()) 
			 {
%>
			<tr> 
				<td><%= rs.getString(1)%> </td>
				<td><%= rs.getString(2)%> </td>
				<td><%= rs.getString(3)%> </td>
				<td><%= rs.getString(4)%> </td>
			</tr>
<%
			 }
%>
			
		</tbody>
		</table>
			
<%
		}
			catch (Exception e) {
			e.printStackTrace();
		}
%>
       </div>
	</div>
	
	<div class="upload-course" id="contact-info">
	 <h1>Contact</h1>
       <div class="teacher-table">
<%
	try
	{	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/branushhub", "root" , "Mylaptop@99");	
			System.out.println("Connection Established...");
			 PreparedStatement ps=con.prepareStatement("");
			String query="Select * from Branushhub.contact ";
			ResultSet rs=ps.executeQuery(query);
%>
			<table border='1'> 
			<tr>
				<th style="text-align:center; ">Name</th>
				<th style="text-align:center; ">Username</th>
                <th style="text-align:center; ">Phone Number</th>
                <th style="text-align:center; ">Message</th>
              </tr>
<% 			
			 while(rs.next()) 
			 {
%>
			<tr> 
				<td><%= rs.getString(1)%> </td>
				<td><%= rs.getString(2)%> </td>
				<td><%= rs.getString(3)%> </td>
				<td><%= rs.getString(4)%> </td>
			</tr>
<%
			 }
%>
			
		</tbody>
		</table>
			
<%
		}
			catch (Exception e) {
			e.printStackTrace();
		}
%>
       </div>
	</div>
    <script
      src="https://kit.fontawesome.com/257f34760d.js"
      crossorigin="anonymous"
      defer
    ></script>
    <script src="../JS/Style.js"></script>
  </body>
</html>
    