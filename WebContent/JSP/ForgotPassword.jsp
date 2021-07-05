<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Forgot Password</title>
    <link rel="stylesheet" href="../CSS/Login.css" /> 
    <link rel="icon" type="image/png" href="../Image/favicon32.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css"    />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Update Password</title>
  </head>

  <body>
    <!-- navbar -->
    <nav class="forgot">
      <div class="logo forgot">
        <a href="./HomePage.jsp">
          <h1>Branush Hub <span class="title">Home</span></h1>
        </a>
      </div>
      <div class="nav-links forgot">
        <a class="dashed" href="./LoginMain.jsp">Login</a>
      </div>
      <div class="switch-tog forgot">
        <div class="mainSwitch forgot">
          <i class="fas fa-sun"></i>
          <label class="switch">
            <input type="checkbox" />
            <span class="slider round"></span>
          </label>
        </div>
      </div>
    </nav>

    <div class="main-login-page">
      <div class="login-container-forgot">
        <div class="page-logo-forgot">
          <div class="box-login">
            <h1>BH</h1>
          </div>
        </div>
        <div class="form-login-forgot">
          <form action="../ForgotPassword" name="submitForm" method="POST" >
            <label for="email">Email</label>
            <input
              type="email"
              name="email"
              id="email"
              required
              autofocus
              autocomplete="email"
            />
            <label for="pass">What is your favorite sport</label>
            <input type="text" name="securityQues" id="pass" required />
            <label for="pass">Enter your Aadhar Number</label>
            <input type="text" name="aadhaar" id="pass" required minlength="12" maxlength="12"/>
            <label for="pass">New Password</label>
            <input
              type="password"
              name="pass"
              id="pass newpass"
              required
              autocomplete="current-password"
            />
            <label for="pass">Confirm Password</label>
            <input
              type="password"
              name="passconfig"
              id="pass confpass"
              required
              autocomplete="current-password"
            />
            <button class="submit" value="studentlogin">Update</button>
          </form>
        </div>
      </div>
    </div>
    <script src="../JS/Style.js"></script>
  </body>
</html>
