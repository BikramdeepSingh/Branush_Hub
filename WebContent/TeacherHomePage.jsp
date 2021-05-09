<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Teacher</title>
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
  		if(session.getAttribute("username2")==null){
  			response.sendRedirect("TeacherLogin.jsp");
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
              	<i class="fas teacher-icon fa-chalkboard-teacher"></i>
              </div>
              <label for="Name">Name</label>
              <input type="text" class="readonlyname" value="${name2 }" readonly>
              <label for="email">Email</label>
              <input type="email" class="readonlyemail" value="${username2 }" readonly>
              <label for="Tel">Phone No.</label>
              <input type="tel" class="readonlytel" value="${phone2 }" readonly>
              <label for="exp">D.O.B</label>
              <input type="text" value="${dob2 }" readonly>
              <label for="Address">Address</label>
              <input type="text" value="${address2 }" readonly>
              <a href="#Edit-profile" class="editde">Change Credentials</a>
            </div>
          </div>  
        </div>
        <div class="Edit-profile" id="Edit-profile">
          <h1>Edit Profile</h1>
          <form action="UpdateInfo" method="post" class="edit-details">
          
          	<label>UserName can not be changed</label>
          	 <label>Username</label>
             <input type="text" class="changename" value="${username2 }" name="userName2" placeholder="UserName" required>
            <label>Name</label>
             <input type="text" class="changename" value="${name2 }" name="name2" placeholder="Name" required>
            <label>Phone Number</label>
             <input type="tel" class="changeemail" value="${phone2 }" name="phoneno2" placeholder="Phone no." minlength="10" maxlength="10" required>
            <label>Address</label>
             <input type="text" class="changetel" value="${address2 }" name="address2" placeholder="Address"  required>
            <label>Change Password</label>
             <input type="password" value="${pass2 }" name="pass2" placeholder="New password" required>
            <label>Confirm Password</label>
             <input type="password" value="${pass2 }" name="confirmPass2" placeholder="Confirm password" required>
           <button class="submit" type="submit" name='button' value='teacherlogin'>
              <div class="changede">Confirm Changes</div>
              </button>
            </form>
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
             <form action="CourseNotesEntry" method="post" class="input-field">
                <label for="Copy">UserName:</label>
     	        <input type="text"  value="${username2 }" name="user" placeholder="UserName" readonly>
    	        <label for="Copy">Enter Subject Name:</label>
     	        <input type="text" required placeholder="Subject Name" name="subject" required>
                <label for="Copy">Copy the link here:</label>
                <input type="text" required placeholder="Google Drive Link" name="subjectDrive" required>
                <button class="submit" type="submit" value="SubmitNotes" name="button" onclick="message();">
                <div class="changede">Submit</div>
                </button>
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
        <form action="CourseNotesEntry" method="post" class="input-field">
       		<label for="Copy">UserName:</label>
     	    <input type="text"  value="${username2 }" placeholder="UserName" name="user1" readonly>
        	<label for="Copy">Enter Course Name:</label>
            <input type="text" required placeholder="Course Name" name="course" required>
            <label for="Copy">Copy the link here:</label>
            <input type="text" required placeholder="Google Drive Link" name="courseDrive" required>
            <button class="submit" type="submit" value="SubmitCourses" name="button"  onclick="message();">
            <div class="changede">Submit</div>
            </button>
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
    <script src="JS/Style.js"></script>
    <script>
        function message(){
            alert("We have received your file. The file will be Upload within 1-3 days")
        }
    </script>
  </body>
</html>
    