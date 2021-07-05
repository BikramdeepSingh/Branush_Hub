<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- DOCTYPE html -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Student</title>
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
        <li class="item" id="course">
          <a href="#course" class="btn"><i class="fas fa-video"></i>Courses</a>
          <div class="smenu">
            <a href="./Course.jsp">View Courses</a>
          </div>
        </li>
        <li class="item" id="college">
          <a href="#college" class="btn"
            ><i class="fas fa-graduation-cap"></i>Select Streams</a
          >
          <div class="smenu">
            <a href="./Notes.jsp#stream-page">Streams</a>  
          </div>
        </li>
        <li class="item">
          <a class="btn" href="./Logout.jsp"><i class="fas fa-sign-out-alt"></i>Logout</a>
        </li>
      </div>
    </div>
    <div class="main-content">
      <div class="profile" id="profile">
        <div class="Details" id="details">
          <h1>Details</h1>
          <div class="details-section">
            <div class="Admin-details">
              <!--  <div class="photo-of-admin"></div> -->
              <label for="Name">Name</label>
              <input type="text" class="readonlyname" value="${name }" readonly>
              <label for="email">Email</label>
              <input type="email" class="readonlyemail" value="${username }" readonly>
              <label for="Tel">Phone No.</label>
              <input type="tel" class="readonlytel" value="${phno}" readonly>
              <label for="exp">D.O.B</label>
              <input type="text" value="${date}" readonly>
              <label for="Address">Address</label>
              <input type="text" value="${address}" readonly>
              <label for="FavouriteSport">Favourite Sport</label>
              <input type="text" value="${favouriteSport}" readonly>
              <label for="Aadhaar">Aadhaar Number</label>
              <input type="text" value="${aadhaar}" readonly>
              <a href="#Edit-profile" class="editde">Change Credentials</a>
            </div>
          </div>  
        </div>
        <div class="Edit-profile" id="Edit-profile">
         <form action="../StudentUpdate" method="post">
          <h1>Edit Profile</h1>
          <div class="edit-details">
            <label>Username</label>
             <input type="text" class="changename"  name="email" value="${username }" readonly>
            <label>Phone Number</label>
             <input type="tel" class="changeemail" name="phonenumber" value="${phno}" placeholder="PhoneNumber." minlength="10" maxlength="10">
            <label>Address</label>
             <input type="text" class="changetel" name="address" value="${address}" placeholder="Address">
            <label>Change Password</label>
             <input type="password" value="${password}" name="pass" placeholder="Password" >
            <label>Confirm Password</label>
            <input type="password" value="${password}" name="Cpass" placeholder="Comfirm Password" >
          <input type="submit" value="Change Credentials" />
            </div>
            </form>
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
    