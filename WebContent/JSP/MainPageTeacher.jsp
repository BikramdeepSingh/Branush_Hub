<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- DOCTYPE html -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Teacher</title>
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
          <i id="icon" class="fas fa-sun"></i>
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
            ><i class="fas fa-graduation-cap"></i>College Resourse</a
          >
          <div class="smenu">
            <a href="./Notes.jsp#stream-page">Streams</a>  
          </div>
        </li>
        <li class="item" id="upload">
            <a href="#upload" class="btn"
              ><i class="fas fa-upload"></i>Upload</a
            >
            <div class="smenu">
              <a href="#upload-notes">Notes</a>
              <a href="#upload-course">Course</a>
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
              <input type="email" class="readonlyemail" value="${username}" readonly>
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
        <form action="../TeacherUpdate" method="post">
          <h1>Edit Profile</h1>
          <div class="edit-details">
            <label>Username</label>
             <input type="text" class="changename" value="${username}" name="email" placeholder="Name" readonly>
            <label>Phone Number</label>
             <input type="tel" class="changeemail"  value="${phno}" name="phonenumber" placeholder="Phone Number" minlength="10" maxlength="10" >
            <label>Address</label>
             <input type="text" class="changetel" value="${address}"name="address" placeholder="Address">
            <label>Change Password</label>
             <input type="password" value="${password }" name="pass"placeholder="Password">
            <label>Confirm Password</label>
             <input type="password" value="${password }" name="Cpass"placeholder="Comfirm Password">
           <input type="submit" value="Change Credentials" />
            </div>
            </form>
        </div>
      </div>
      <div class="college">
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
      </div>
      <div class="upload-notes" id="upload-notes">
        <h1>Upload Notes</h1>
        
            <div class="upload-notes">
                <div class="main-inst">
                    <h3>How to upload</h3>
                </div>
            <div class="inst">
                <li>Open Google and search for Google Drive</li>
                <li>Open google drive and click on the option "New"</li>
                <li>then click on "Upload file"</li>
                <li>Choose the file that you want to upload.</li>
                <li>Share the link of that file in the input field.</li>
            </div>
            <form action="../NotesUpdate" method="post">
            <div class="input-field">
                <label for="Copy">Username</label>
                <input type="text" name="email" value="${username}" placeholder="username" readonly>
                <label for="Copy">Subject Name</label>
                <input type="text" name="notes" required placeholder="Subject">
                <label for="Copy">Copy the link here:</label>
                <input type="text" name="link" required placeholder="link">
                <input type="submit" value="Submit" onclick="message();">
            </div>
            </form>
          
        </div>
      </div>
      <div class="upload-course" id="upload-course">
        <h1>Upload Course</h1>
        <div class="upload-notes">
            <div class="main-inst">
                <h3>How to upload</h3>
            </div>
        <div class="inst">
            <li>Open Google and search for Google Drive</li>
            <li>Open google drive and click on the option "New"</li>
            <li>then click on "Upload file"</li>
            <li>Choose the file that you want to upload.</li>
            <li>Share the link of that file in the input field.</li>
        </div>
        <form action="../CourseUpdate" method="post">
        <div class="input-field">
        	<label for="Copy">Username</label>
            <input type="text" name="email" value="${username}" placeholder="username" readonly>
            <label for="Copy">Course Name</label>
            <input type="text" name="course" required placeholder="Course">
            <label for="Copy">Copy the link here:</label>
            <input type="text" name="link" required placeholder="link">
            <input type="submit" value="Submit" onclick="message();">
        </div>
        </form>
      
    </div>
      </div>
      <div class="settings">
      </div>
    <script
      src="https://kit.fontawesome.com/257f34760d.js"
      crossorigin="anonymous"
      defer
    ></script>
    <script src="../JS/Style.js"></script>
    <script>
        function message(){
            alert("We have received your file. The file will get uploaded within 2-3 days")
        }
    </script>
  </body>
</html>
    