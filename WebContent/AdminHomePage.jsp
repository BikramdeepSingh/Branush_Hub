<%@ page import="java.sql.*"
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Admin</title>
     <link rel = "icon" href =".\images\favicon32.png" type = "image/x-icon">
    <link rel="stylesheet" href="./CSS/MainPage.css" />
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
  		if(session.getAttribute("username")==null){
  			response.sendRedirect("AdminLogin.jsp");
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
            <a href="Courses.jsp">View Courses</a>
          </div>
        </li>
        <li class="item" id="college">
          <a href="#college" class="btn"
            ><i class="fas fa-graduation-cap"></i>College Resourse</a
          >
          <div class="smenu">
            <a href="Notes.jsp">Streams</a>  
          </div>
        </li>
         <li class="item" id="query">
          <a href="#query" class="btn"><i class="fas fa-exclamation"></i>Queries</a>
          <div class="smenu">
            <a href="#user-query">User Query</a>
          </div>
        </li>
        <li class="item">
          <a class="btn" href="Logout.jsp"><i class="fas fa-sign-out-alt"></i>Log out</a>
        </li>
      </div>
    </div>
    <div class="main-content">
      <div class="profile" id="profile">
        <div class="Details" id="details">
          <h1>Details</h1>
          <div class="details-section">
            <div class="Admin-details">
              <div class="photo-of-admin">
              <i class="fas fa-users-cog admin-icon"></i></div>
              <label for="Name">Name</label>
              <input type="text" class="readonlyname" value="${name}" readonly>
              <label for="email">Email</label>
              <input type="email" class="readonlyemail" value="${username }" readonly>
              <label for="Tel">Phone No.</label>
              <input type="tel" class="readonlytel" value="${phone }" readonly>
              
              <label for="Address">Address</label>
              <input type="text" value="${address }" readonly>
              <a href="#Edit-profile" class="editde">Change Credentials</a>
            </div>
          </div>  
        </div>
        <div class="Edit-profile" id="Edit-profile">
          <h1>Edit Profile</h1>
           <form class="edit-details" action="UpdateInfo" method="post">
            <label>UserName can not be changed</label>
            <label>Username</label>
             <input type="text" class="changename" value="${username }" name="userName" placeholder="UserName"  readonly>
             <label>Name</label>
             <input type="text" class="changename" value="${name }" name="name" placeholder="Name"  required>
            <label>Phone Number</label>
             <input type="tel" class="changeemail" value="${phone }" name="phoneno" placeholder="Phone no." minlength="10" maxlength="10" required>
            <label>Address</label>
             <input type="text" class="changetel"value="${address }" name="address" placeholder="Address"  required>
            <label>Change Password</label>
             <input type="password" value="${pass }" name="pass" minlength="7" maxlength="15" placeholder="New password" required>
            <label>Confirm Password</label>
             <input type="password" value="${pass }" name="confirmPass" minlength="7" maxlength="15" placeholder="Confirm password" required>
             <button class="submit" type="submit" name='button' value='adminlogin' onclick="changes();">
            <div class="changede">Confirm Changes</div>
            </button>
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
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite", "root" , "Mylaptop@99");	
			System.out.println("Connection Established...");
			 PreparedStatement ps=con.prepareStatement("");
			String query="Select username,name,phoneNumber,dob,address from dialownsuite.studentlogin ";
			ResultSet rs=ps.executeQuery(query);
%>
			<table border='1'> 
			<tbody>
			<tr><th>UserName</th><th>Name</th><th>D.O.B</th><th>Phone Number</th><th>Address</th></tr>
<% 			
			 while(rs.next()) 
			 {
%>
			<tr> 
				<td><%= rs.getString(1)%> </td>
				<td> <%=rs.getString(2)%> </td>
				<td> <%= rs.getString(4)%> </td>
				<td><%= rs.getString(3)%> </td>
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
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite", "root" , "Mylaptop@99");	
			System.out.println("Connection Established...");
			 PreparedStatement ps=con.prepareStatement("");
			String query="Select banId,username,reason from dialownsuite.banstatus ";
			ResultSet rs=ps.executeQuery(query);
%>
			<table border='1'> 
			<tbody>
			<tr><th>Ban Id</th><th>UserName</th><th>Reason</th></tr>
<% 			
			 while(rs.next()) 
			 {
%>
			<tr> 
				<td><%= rs.getString(1)%> </td>
				<td> <%=rs.getString(2)%> </td>
				<td> <%= rs.getString(3)%> </td>
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
        <h2>Ban a Student</h2>
        <form action="BanStatus" method="post" class="unban-table">
          <input type="text" required name="username" placeholder="UserName">
          <input type="text" required name="reason" placeholder="Reason">
          <button class="submit" type="submit" value="ban" name="button" style="width:20%; margin:auto;" >
            <div class="txt">Ban</div>
            </button>
        </form>
      </div>
       <div class="unban">
        <h2>Unban a Student</h2>
         <form action="BanStatus" method="post" class="unban-table">
          <input type="text" required placeholder="UserName" name="username">
          <button class="submit" type="submit" value="unban" name="button" style="width:20%; margin:auto;" ">
            <div class="txt">UnBan</div>
            </button>
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
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite", "root" , "Mylaptop@99");	
			System.out.println("Connection Established...");
			 PreparedStatement ps=con.prepareStatement("");
			String query="Select username,name,phoneNumber,dob,qualification,address from dialownsuite.teacherlogin ";
			ResultSet rs=ps.executeQuery(query);
%>
			<table border='1'> 
			<tbody>
			<tr><th>UserName</th><th>Name</th><th>D.O.B</th><th>Phone Number</th><th>Qualification</th><th>Address</th></tr>
<% 			
			 while(rs.next()) 
			 {
%>
			<tr> 
				<td><%= rs.getString(1)%> </td>
				<td> <%=rs.getString(2)%> </td>
				<td> <%= rs.getString(4)%> </td>
				<td><%= rs.getString(3)%> </td>
				<td> <%= rs.getString(5)%> </td>
				<td> <%= rs.getString(6)%> </td>
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
             <form action="RegisterTeacher" method="post">
            <input type="text" required placeholder="Name of the Teacher" name="name">
            <input type="text" required placeholder="Email-id / UserName" name="email">
            <input type="text" required placeholder="Qualification" name="qualification">
            <input type="date" required name="dob">
            <input type="tel" required placeholder="Phone no." name="phone">
            <input type="text" required placeholder="Address" name="address">
            <input type="password" required placeholder="Create Password" name="pass">
            <input type="password" required placeholder="Confirm Password" name="confirmPass">
            <button class="submit" type="submit"  name="button" style="width:20%;  margin:auto;">
            <div class="txt">Add Teacher</div>
            </button>
           </form>
          </div>
        </div>
      </div>

	<div class="query" >
        <div class="user-query" id="user-query">
          <h1>Queries</h1>
          <div class="qu-table">
           <%
	try
	{	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dialownsuite", "root" , "Mylaptop@99");	
			System.out.println("Connection Established...");
			 PreparedStatement ps=con.prepareStatement("");
			String query="Select QueryId,Name,Email,PhoneNumber,Message from dialownsuite.contactus ";
			ResultSet rs=ps.executeQuery(query);
%>
			<table border='1'> 
			<tbody>
			<tr><th>QueryId</th><th>Name</th><th>Email</th><th>Phone Number</th><th>Message</th></tr>
<% 			
			 while(rs.next()) 
			 {
%>
			<tr> 
				<td><%= rs.getString(1)%> </td>
				<td> <%=rs.getString(2)%> </td>
				<td> <%= rs.getString(4)%> </td>
				<td><%= rs.getString(3)%> </td>
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
          <div class="unban">
        <h2>Query Id</h2>
         <form action="SolvedQuery" method="post" class="unban-table">
          <input type="text" required placeholder="QueryId" name="query">
          <button class="submit" type="submit" value="unban" name="querybutton" >
            <div class="txt">Query Solved</div>
            </button>
        </form>
      </div>
        </div>
        
	
    <script
      src="https://kit.fontawesome.com/257f34760d.js"
      crossorigin="anonymous"
      defer
    ></script>
     <script >
    function changes(){
        alert("Changes will be applied once you log in again!")
    }
</script>
    <script src="JS/Style.js"></script>
  </body>
</html>
    