<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Adding icon to our Branush Hub Project -->
    <link rel = "icon" href ="https://cdn.iconscout.com/icon/free/png-512/dos-3-570114.png" type = "image/x-icon"> 
    <title>face</title>
    <style>
    	@import url("https://fonts.googleapis.com/css2?family=Poppins&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap");
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
body {
  font-family: "Poppins", sans-serif;
  background: black;
  background-repeat: no-repeat;
  background-position: center center;
  background-size: cover;
  overflow: hidden;
}
#video {
  margin: 5% auto;
  width: 100%;
  height: 50vh;
}
.logo {
  font-family: "Rock Salt", cursive;
}
.logo h1 {
  font-size: 20px;
}
nav {
  height: 7vh;
  width: 90%;
  margin: auto;
  display: flex;
  justify-content: space-between;
  color: white;
  align-items: center;
}
.nav-links {
  display: flex;
  justify-content: space-between;
  width: 30%;
}
.nav-links a {
  text-decoration: none;
  color: rgba(182, 182, 182, 0.884);
}
.nav-links a:hover {
  color: white;
}
.nav-links li {
  list-style: none;
}
.controller {
  display: flex;
  justify-content: space-between;
  width: 50%;
  height: 5vh;
  margin: auto;
}
.controller a {
  text-decoration: none;
  color: rgb(238, 238, 238);
  padding: 5px;
  text-align: center;
  border-radius: 5px;
}
.controller a:hover {
  background-color: rgba(39, 39, 39, 0.849);
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
      <ul class="nav-links">
        <a href="HomePage.jsp"><li>Home</li></a>
        <a href="HomePage.jsp#contact"><li>Contact</li></a>
        <a href="HomePage.jsp#social"><li>Social</li></a>
      </ul>
    </nav>
    <div class="video-wrap">
      <video id="video" playsinline autoplay muted></video>
    </div>

    <div class="controller">
      <a href="#">Store Face</a>
      <a href="Register.jsp">Go back</a>
    </div>

    <script>
      "user strict";
      const video = document.getElementById("video");
      const canvas = document.getElementById("canvas");
      const snap = document.getElementById("snap");
      const error = document.getElementById("spanErrorMsg");

      const constraints = {
        audio: false,
        video: {
          width: 550,
          height: 400,
        },
      };
      async function init() {
        try {
          const stream = await navigator.mediaDevices.getUserMedia(constraints);
          handleSuccess(stream);
        } catch (e) {
          errorMsgElement.innerHTML = `navigator.getUserMedia.error:${e.toString()}`;
        }
      }

      function handleSuccess(stream) {
        window.stream = stream;
        video.srcObject = stream;
      }

      init();

      var context = canvas.getContext("2d");
      snap.addEventListener("click", function () {
        context.drawImage(video, 0, 0, 640, 480);
      });
    </script>
  </body>
</html>
