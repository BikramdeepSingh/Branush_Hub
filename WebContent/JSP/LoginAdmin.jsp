<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- DOCTYPE html -->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
     <title>Login Admin</title>
    <link rel="stylesheet" href="../CSS/Login.css" />
    <link rel="icon" type="image/png" href="../Image/favicon32.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
  </head>

  <body>
    <!-- navbar -->
    <nav>
      <div class="logo">
        <a href="./HomePage.jsp">
          <h1>Branush Hub <span class="title">Home</span></h1>
        </a>
      </div>
      <div class="nav-links">
        <a href="./LoginStudent.jsp">Student</a>
        <a href="./LoginTeacher.jsp">Teacher</a>
        <a class="dashed" href="#">Admin</a>
        <a href="./Registration.jsp">Register</a>
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
          <form action="../adminlogin" method="post">
            <label for="email">Email</label>
            <input
              type="text"
              name="email"
              id="email"
              required
              autofocus
              autocomplete="email"
            />

            <label for="pass">Password</label>
            <input
              type="password"
              name="pass"
              id="pass"
              required
              autocomplete="current-password"
            />

          <button class="submit" value="adminlogin">Log In</button>
          </form>
        </div>
      </div>
    </div>

    <script src="../JS/Style.js"></script>
  </body>
</html>