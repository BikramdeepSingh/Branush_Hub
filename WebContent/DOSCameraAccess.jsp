<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Adding icon to our Branush Hub Project -->
    <link rel = "icon" href ="https://cdn.iconscout.com/icon/free/png-512/dos-3-570114.png" type = "image/x-icon"> 
    <title>Permission</title>
    <style>
    	@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap");

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  list-style: none;
  text-decoration: none;
  background-color: rgb(14, 14, 14);
  color: white;
}
body {
  overflow: hidden;
  font-family: "Poppins", sans-serif;
}
nav {
  width: 100%;
  height: 8vh;
  align-items: center;
  display: flex;
  justify-content: space-around;
}
.nav-link {
  width: 10%;
  display: flex;
  justify-content: space-between;
}
.nav-link a .wrap {
  padding: 5px;
  display: none;
}
.nav-link a:hover .wrap {
  display: inline;
}
.main {
  width: 100%;
  height: 40vh;
  background: url(https://images.pexels.com/photos/3787324/pexels-photo-3787324.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940);
  background-repeat: no-repeat;
  background-position: 50% 80%;
  background-size: cover;
}
.per {
  width: 100%;
  height: 27vh;
}
.border {
  border: 2px solid white;
  width: 50%;
  height: 27vh;
  align-items: center;
  border-radius: 5px;
  text-align: center;
  margin: 5% auto;
}
.content {
  height: 24vh;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}
.header {
  height: 10vh;
  align-items: center;
}
.options {
  display: flex;
  margin: auto;
  justify-content: space-between;
  width: 50%;
}
.options a .one {
  padding: 15px;
  color: white;
}
.options a .two {
  padding: 15px;
  border-radius: 5px;
  color: rgb(197, 197, 197);
}
.options a:hover .two {
  padding: 15px;
  color: white;
}
footer {
  width: 90%;
  margin: auto;
}
.fotter-options {
  margin: 2%;
  display: flex;
  justify-content: space-between;
  padding: 25px;
}
    	
    </style>
  </head>
  <body>
    <nav>
      <div class="logo">
        <h1>
          DailOwn Suite
        </h1>
      </div>
      <ul class="nav-link">
        <a href="Register.jsp"
          ><li>
            <i class="fas fa-chevron-circle-left"></i
            ><span class="wrap">Go Back</span>
          </li></a
        >
        <a href="HomePage.jsp"
          ><li>
            <i class="fas fa-home"></i><span class="wrap">Go home</span>
          </li></a
        >
      </ul>
    </nav>
    <div class="main"></div>
    <div class="per">
      <div class="border">
        <div class="content">
          <div class="header">
            <h2>
              DailOwn Suite wants you to add your Face.
            </h2>
          </div>
          <ul class="options">
            <a href="AddFace.jsp"><li class="one">Yes Why Not!</li></a>
            <a href="StudentLogin.jsp"><li class="two">No i am ok!</li></a>
          </ul>
        </div>
      </div>
    </div>
    <footer>
      <div class="fotter-options">
        <h5>
          @DailOwnSuite&copy;
        </h5>
        <h5>
          Made with love.
        </h5>
      </div>
    </footer>
  </body>

  <script
    src="https://kit.fontawesome.com/257f34760d.js"
    crossorigin="anonymous"
    defer
  ></script>
</html>
    