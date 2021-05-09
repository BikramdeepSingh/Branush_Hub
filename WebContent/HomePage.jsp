<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel = "icon" href =".\images\favicon32.png" type = "image/x-icon">
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css"
    />
    <link rel="stylesheet" href="CSS/HomePage.css" type="text/css" />
    <title>Branush Hub</title>
  </head>

  <body onload="play()">
  	<div class="mediaquery">
      <h1>Please turn on desktop view to access the web-site.</h1>
    </div>
    <!-- loader -->
    <div class="loader">
      <div class="loading-page">
        <div class="counter">
          <p>loading</p>
          <h1>0%</h1>
          <hr />
        </div>
      </div>
    </div>
    <!-- navigation -->
    <nav>
      <!-- logo -->
      <div class="logo">
          <h1>Branush Hub</h1>
      </div>

      <!-- nav options -->
      <div class="main-nav">
        <li><a href="#about">About</a></li>
        <li><a href="#features">Features</a></li>
        <li><a href="#contact">Contact</a></li>
        <li><a href="./LoginMain.jsp">Login/Register</a></li>
      </div>

      <!-- switch -->
      <div class="switch-dark-light">
        <div class="icon">
          <i id="icon" class="fas fa-sun"></i>
        </div>
        <div class="switch">
          <label class="switch">
            <input type="checkbox" />
            <span class="slider round"></span>
          </label>
        </div>
      </div>
    </nav>

    <!-- home page -->
    <div class="home-page" id="home">
      <div class="home-page-logo">
        <h1>Branush Hub</h1>
      </div>
      <div class="quote">
        <p>Welcome to the ulimate platform of knowledge hub, <br>where you can feed your hunger for knowledge.</p>
      </div>
      <img src="Image/main.svg" />
    </div>

    <!-- move to the top -->
    <a href="#home" class="circle">
      <i class="fas fa-sort-up"></i>
    </a>
    <!-- about -->

    <div class="about-section" id="about">
      <div class="header-image">
        <img src="Image/about.svg" />
      </div>
      <div class="header-about">
        <h1>About us</h1>
      </div>
      <div class="about-content">
        <h3>
          Welocme to Branush Hub,
          A free to use platform where students can easily login and access their profiles to benefit themselves from all the study 
          related content present on Branush Hub. Branush Hub has a User-friendly interface and anyone having issue regarding anything
          can contact our support team using the contact page present on the home page. Not only for students but also for teachers, 
          Branush Hub provides an easy to use interface where he/she can upload content realted to subject notes or even course videos.
          <br>Feel free to ask any query :)  
        </h3>
      </div>
    </div>

    <!-- features -->

    <div class="feature-section" id="features">
      <div class="feature-header">
        <h1></h1>
      </div>
      <div class="all-features">
        <div class="box1">
          <div class="part1">
            <h3>Easy to Use</h3>
          </div>
          <div class="part2">
            <ul>
              <li>Easy</li>
              <li>Fast</li>
              <li>Efficent</li>
              <li>Begineer Friendly</li>
            </ul>
          </div>
          <div class="part3"><img src="Image/1.svg" /></div>
        </div>
        <div class="box2">
          <div class="part1">
            <h3>Notes and Lectures</h3>
          </div>
          <div class="part2">
            <ul>
              <li>Online Notes</li>
              <li>Video lectures</li>
              <li>Various Streams</li>
              <li>Easy Upload for Teachers</li>
            </ul>
          </div>
          <div class="part3">
            <img src="Image/2.svg" />
          </div>
        </div>
        <div class="box3">
          <div class="part1">
            <h3>Whats Different?</h3>
          </div>
          <div class="part2">
            <ul>
              <li>Dark Mode</li>
              <li>Fast Assistance</li>
              <li>Hassle Free Upload's</li>
              <li>New Content get's added soon</li>
            </ul>
          </div>
          <div class="part3">
            <img src="Image/3.svg" />
          </div>
        </div>
      </div>
    </div>

    <!-- contact -->

    <div class="contact-section" id="contact">
      <div class="contact-header"></div>
      <div class="main-contact">
        <div class="main-header">
          <h2>Contact</h2>
        </div>
        <form action="ContactUs" method="post" class="row input-container">
          <label for="Name">Name</label>
          <input type="text" name="name" placeholder="Name" required />
          <label for="email">Email</label>
          <input type="Email" name="email"  placeholder="Email" required />
          <label>Phone Number</label>
          <input type="text" name="phone" placeholder="Phone Number" required />
          <label for="Name">Message</label>
          <textarea
            name="message"
            cols="8"
            rows="8"
            placeholder="Anything :)"
            required
          ></textarea>
          <input type="submit" value="Send" />
        </form>
      </div>
    </div>

    <!-- footer -->
    <footer>
      <div class="left">
        <h3>Branush Hub</h3>
      </div>
      <div class="mid">
        <h3>Made with Love</h3>
      </div>
      <div class="right">
        <i class="fab fa-instagram"></i>
        <i class="fab fa-facebook"></i>
        <i class="fab fa-twitter"></i>
      </div>
    </footer>

    <script src="JS/Style.js"></script>
    
    <!-- font awwsome -->
    <script
      src="https://kit.fontawesome.com/257f34760d.js"
      crossorigin="anonymous"
      defer
    ></script>

    <!-- jQuery -->
    <script
      src="https://code.jquery.com/jquery-3.3.1.js"
      integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
      crossorigin="anonymous"
    ></script>
    
    
       <!-- loader -->
    <script>
      var counter = 0;
      var c = 0;
      var i = setInterval(function () {
        $(".loading-page .counter h1").html(c + "%");
        $(".loading-page .counter hr").css("width", c + "%");

        counter++;
        c++;

        if (counter == 101) {
          clearInterval(i);
        }
      }, 10);
    </script>

    <!-- onload animation -->
    <script>
      $(window).on("load", function () {
        $(".loader").fadeOut("slow");
      });
      
      
    </script>
  </body>
</html>