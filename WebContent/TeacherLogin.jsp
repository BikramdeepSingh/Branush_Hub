<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
     <title>Teacher Login</title>
    <link rel="stylesheet" href="CSS/AllLogin.css" />
    <link rel = "icon" href =".\images\favicon32.png" type = "image/x-icon">
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   
  </head>

  <body>
   	<div class= "mediaquery">
  		<h1>Please turn on desktop view</h1>
  	</div>	
    <!-- navbar -->
    <nav>
      <div class="logo">
        <a href="HomePage.jsp">
          <h1>Branush Hub <span class="title">Login</span></h1>
        </a>
      </div>
      <div class="nav-links">
        <a href="StudentLogin.jsp">Student</a>
        <a class="dashed" href="#">Teacher</a>
        <a href="AdminLogin.jsp">Admin</a>
        <a href="Register.jsp">Register</a>
      </div>
      <div class="switch-tog">
        <i class="fas fa-sun"></i>
        <label class="switch">
          <input type="checkbox" />
          <span class="slider round"></span>
        </label>
      </div>
    </nav>

    <div class="main-login-page">
      <div class="login-container">
        <div class="page-logo">
          <div class="box-login">
            <h1>BH</h1>
          </div>
        </div>
        <div class="form-login">
           <form action='Login' method='post'>
            <label for="email">Email</label>
            <input
              type="email"
              name='uname'
              id="email"
              required
              autofocus
              autocomplete="email"
            />
            <label for="pass">Password</label>
            <input
              type="password"
              name='pass'
              id="pass"
              required
              autocomplete="current-password"
            />
            <button class="submit" type="submit" name='button' value='TeacherLogin'>Log In</button>
          </form>
        </div>
      </div>
    </div>

    <script src="JS/Style.js"></script>
  </body>
</html>
