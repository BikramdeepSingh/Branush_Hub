<!-- DOCTYPE html -->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/png" href="../Image/favicon32.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css"
    />
    <link rel="stylesheet" href="../CSS/HomePage.css" />
    <title>Branush Hub</title>
  </head>

  <body>
    <!-- navigation -->
    <nav>
      <!-- logo -->
      <div class="logo">
        <a href="#home">
          <h1>Branush Hub</h1>
        </a>
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
        <p>Welcome to the ultimate platform for teaching and learning.</p>
      </div>
      <img src="../Image/main.svg" />
    </div>

    <!-- move to the top -->
    <a href="#home" class="circle">
      <i class="fas fa-sort-up"></i>
    </a>
    <!-- about -->

    <div class="about-section" id="about">
      <div class="header-image">
        <img src="../Image/about.svg" />
      </div>
      <div class="header-about">
        <h1>About</h1>
      </div>
      <div class="about-content">
        <h3>
          Branush Hub is an advanced platform, which is made to make learning easier, both for students as well as teachers. You can create account, both as a teacher, or as a student.
          Teachers can upload their video lectures with ease, students can access them with click of a button. A lot more features to be added soon!
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
              <li>Efficient</li>
              <li>Beginner Friendly</li>
            </ul>
          </div>
          <div class="part3"><img src="../Image/1.svg" /></div>
        </div>
        <div class="box2">
          <div class="part1">
            <h3>Notes and Lectures</h3>
          </div>
          <div class="part2">
            <ul>
              <li>Online Notes</li>
              <li>Video Lectures</li>
              <li>Easy Access</li>
            </ul>
          </div>
          <div class="part3">
            <img src="../Image/2.svg" />
          </div>
        </div>
        <div class="box3">
          <div class="part1">
            <h3>For Free</h3>
          </div>
          <div class="part2">
            <ul>
              <li>Free to use</li>
              <li>Access to Video's</li>
              <li>Efficient</li>
              <li>Easy Connect with Admin</li>
            </ul>
          </div>
          <div class="part3">
            <img src="../Image/3.svg" />
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
        <form action="../Contact" method="post"> 
          <label for="Name">Name</label>
          <input type="text" name="name" placeholder="Name" required />
          <label for="email">Email</label>
          <input type="Email" name="email" placeholder="Email" required />
          <label for="email">Phone Number</label>
          <input type="text" name="phno" placeholder="Phone Number" required />
          <label for="Name">Message</label>
          <textarea
            name="message"
            cols="8"
            rows="8"
            name="message"
            placeholder="Type your message for us here"
            required
          ></textarea>
          <input type="submit" value="Contact" />
        </form>
      </div>
    </div>

    <!-- footer -->
    <hr>
    <footer>
      <div class="left">
        <h3>Branush Hub</h3>
      </div>
      
      <div class="right">
        <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
        <a href="https://www.facebook.com/"><i class="fab fa-facebook"></i></a>
        <a href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
      </div>
    </footer>

    <script src="../JS/Style.js"></script>
  </body>
</html>
    