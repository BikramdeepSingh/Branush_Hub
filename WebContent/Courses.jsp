<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     
         <link rel = "icon" href =".\images\favicon32.png" type = "image/x-icon">

    <link rel="stylesheet" href="CSS/Course.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css"
    />
    <title>Branush Hub Courses</title>
  </head>

  <body>
  <%
  	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
	response.setHeader("Pragma","no-cache");//HTTP 1.0
	response.setHeader("Expires","0");//Proxies
  		if(session.getAttribute("username")==null){
  			if(session.getAttribute("username1")==null){
  				if(session.getAttribute("username2")==null){
  					response.sendRedirect("HomePage.jsp");
  				}
  			}
  		}
  		
  %>
  <div class="mediaquery">
      <h2>Please Turn on Desktop Site view to access the site</h2>
    </div>
    <!-- navbar -->
    <nav>
      <div class="logo">
        <h1>
          Branush Hub
          <span class="des">
            Courses
          </span>
        </h1>
      </div>
      <ul class="navlinks">
        <a href="Logout.jsp">
          <li>Log out</li>
        </a>
      </ul>
      <!-- Switch -->
      <div class="switch-theme">
        <i id="theme-id" class="fas fa-sun"></i>
        <label class="switch">
          <input type="checkbox" />
          <span class="slider round"></span>
        </label>
      </div>
    </nav>

    <!-- main page -->

    <div class="courses">
      <div class="header"></div>
      <div class="courses-list">
        <div class="course-line1">
          <!-- html -->

          <div class="course">
            <div class="image">
              <h3>HTML</h3>
            </div>
            <div class="enroll">
              <a href="HTML.jsp">
                <button class="btn">
                  Enroll
                </button></a
              >
            </div>
          </div>

          <!-- css -->
          <div class="course">
            <div class="image">
              <h3>CSS</h3>
            </div>
            <div class="enroll">
              <a href="CSS.jsp">
                <button class="btn">
                  Enroll
                </button></a
              >
            </div>
          </div>

          <!-- javascript -->

          <div class="course">
            <div class="image">
              <h3>Javascript</h3>
            </div>
            <div class="enroll">
              <a href="JS.jsp">
                <button class="btn">
                  Enroll
                </button></a
              >
            </div>
          </div>
        </div>
        <div class="course-line2">
          <!-- SQl -->

          <div class="course">
            <div class="image">
              <h3>SQL</h3>
            </div>
            <div class="enroll">
              <a href="SQL.jsp">
                <button class="btn">
                  Enroll
                </button></a
              >
            </div>
          </div>

          <!-- Java -->

          <div class="course">
            <div class="image">
              <h3>Java</h3>
            </div>
            <div class="enroll">
              <a href="Java.jsp">
                <button class="btn">
                  Enroll
                </button></a
              >
            </div>
          </div>

          <!-- python -->

          <div class="course">
            <div class="image">
              <h3>python</h3>
            </div>
            <div class="enroll">
              <a href="Python.jsp">
                <button class="btn">
                  Enroll
                </button></a
              >
            </div>
          </div>
        </div>
        <div class="course-line3">
          <div class="course">
            <div class="image-not">
              <h3>Coming Soon</h3>
            </div>
            <div class="enroll">
              <a href="#">
                <button class="btn-not">
                  not now
                </button></a
              >
            </div>
          </div>
          <div class="course">
            <div class="image-not">
              <h3>Coming Soon</h3>
            </div>
            <div class="enroll">
              <a href="#">
                <button class="btn-not">
                  not now
                </button></a
              >
            </div>
          </div>
          <div class="course">
            <div class="image-not">
              <h3>Coming Soon</h3>
            </div>
            <div class="enroll">
              <a href="#">
                <button class="btn-not">
                  not now
                </button></a
              >
            </div>
          </div>
        </div>
      </div>
    </div>

    <script src="JS/Style.js"></script>
  </body>
</html>
    