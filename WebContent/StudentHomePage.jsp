<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Student</title>
   <link rel = "icon" href =".\images\favicon32.png" type = "image/x-icon">
    <link rel="stylesheet" href="CSS/MainPage.css" />
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
  		if(session.getAttribute("username1")==null){
  			response.sendRedirect("StudentLogin.jsp");
  		}
  		session.getAttribute("name1");
  		session.getAttribute("phone1");
  		session.getAttribute("dob1");
  		session.getAttribute("address1");
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
            <a href="Courses.jsp">View Courses</a>
          </div>
        </li>
        <li class="item" id="college">
          <a href="#college" class="btn"
            ><i class="fas fa-graduation-cap"></i>College Resourse</a
          >
          <div class="smenu">
            <a href="Notes.jsp#stream-page">Streams</a>  
          </div>
        </li>
        <li class="item">
          <a class="btn" href="Logout.jsp"><i class="fas fa-sign-out-alt"></i>Logout</a>
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
              <i class="fas fa-user-graduate"></i></div>
              <label for="Name">Name</label>
              <input type="text" class="readonlyname"  value="${name1}" readonly>
              <label for="email">Email</label>
              <input type="email" class="readonlyemail" value="${username1}" name="uname1" readonly>
              <label for="Tel">Phone No.</label>
              <input type="tel" class="readonlytel" value="${phone1 }" readonly>
              <label for="exp">D.O.B</label>
              <input type="text"  value="${dob1 }"  readonly>
              <label for="Address">Address</label>
              <input type="text" value="${address1 }" readonly>
              <a href="#Edit-profile" class="editde">Change Credentials</a>
            </div>
          </div>  
        </div>
        <div class="Edit-profile" id="Edit-profile">
          <h1>Edit Profile</h1>
          <form action="UpdateInfo" method="post" class="edit-details">
          	<label>UserName can not be changed</label>
          	<label>Username</label>
             <input type="text" class="changename" value="${username1 }" name="userName1" placeholder="UserName"  readonly>
            <label>Name</label>
             <input type="text" class="changename" value="${name1 }" name="name1" placeholder="Name" required>
            <label>Phone Number</label>
             <input type="tel" class="changeemail" value="${phone1 }" placeholder="Phone no." minlength="10" maxlength="10" required>
            <label>Address</label>
             <input type="text" class="changetel" value="${address1 }" placeholder="Address" name="address1"  required>
            <label>Change Password</label>
             <input type="password" value="${pass1 }" placeholder="New password" name="pass1" required>
            <label>Confirm Password</label>
             <input type="password"value="${pass1 }" placeholder="Confirm password" name="confirmPass1" required>
            <button class="submit" type="submit" name='button' value='studentlogin'>
              <div class="changede">Confirm Changes</div>
           
            </button>
            </form>
            </div>
        </div>
      </div>
      <!-- <div class="college">
        <div class="streams" id="streams">
          <h1>Streams</h1>
         <div class="departments">
            <div class="alldepart">
              <div class="CSEdepart">
                  <h1>
                  <a onclick="warn();" href="./notes/index.html">computer science</a>
                  </h1>
              </div>
              <div class="ITdepart">
                <h1>
                  <a onclick="warn();" href="./notes/index.html">Information Technology</a>
                </h1>
              </div>
              <div class="MECdepart">
                    <h1>
                  <a onclick="warn();" href="./index.html">Mechanical engineering</a>
                  </h1>
              </div>
            </div>
          </div>
        </div>
      </div> -->
     
    <script
      src="https://kit.fontawesome.com/257f34760d.js"
      crossorigin="anonymous"
      defer
    ></script>
    <script src="JS/Style.js"></script>
  </body>
</html>
    