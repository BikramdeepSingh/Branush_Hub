<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link  rel="stylesheet" href=../../CSS/CourseAll.css />
    <!-- Adding icon to our DialOwn Suite Project -->
    <link rel="icon" type="image/png" href="../../Image/favicon32.png">
    <title>JavaScript</title>
  </head>
  <body>
  <%
  		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
		response.setHeader("Pragma","no-cache");//HTTP 1.0
		response.setHeader("Expires","0");//Proxies
  		
  		if(session.getAttribute("username")==null)
  		{
  			response.sendRedirect("../LoginMain.jsp");
  		}
  %>
    <nav class="JS"></nav>
    <div class="about">
      <div class="edit-it">
        <div class="header-edit">
          <h2>About JS</h2>
        </div>
        <div class="header-desc">
          <p>
            JavaScript often abbreviated as JS, is a programming language that
            conforms to the ECMAScript specification.JavaScript is high-level,
            often just-in-time compiled, and multi-paradigm. It has
            curly-bracket syntax, dynamic typing, prototype-based
            object-orientation, and first-class functions. Alongside HTML and
            CSS, JavaScript is one of the core technologies of the World Wide
            Web.
          </p>
        </div>
        <div class="header-buttons">
          <form action="../../DetailCourse" method="post">
        <div class="last">
        <br>
        <button type="submit"  class="cart" value="javascript" name="name" readonly>Enroll Now!</button>
        </div>
        </form>
        </div>
      </div>
    </div>
    <div class="about-course">
      <div class="course-details">
        <div class="header-course">
          <h1>This course contains</h1>
        </div>
        <div class="points">
          <li>This Course is Beginner Friendly.</li>
          <li>
            This course contains all the basic topics as well the advance
            topics
          </li>
          <li>
            30+ hours of videos
          </li>
          <li>
            10+ Assignments
          </li>
          <li>
            Download-able resources
          </li>
          <li>
            Complete Course at your own pace
          </li>
          <li>
            Course also contains a final exam
          </li>
        </div>
        <div class="header-course">
          <h1>About JavaScript</h1>
        </div>
        <div class="header-desc">
          <p>
            JavaScript often abbreviated as JS, is a programming language that
            conforms to the ECMAScript specification. JavaScript is high-level,
            often just-in-time compiled, and multi-paradigm. It has
            curly-bracket syntax, dynamic typing, prototype-based
            object-orientation, and first-class functions. Alongside HTML and
            CSS, JavaScript is one of the core technologies of the World Wide
            Web.JavaScript enables interactive web pages and is an essential
            part of web applications.
          </p>
        </div>
        <div class="header-course">
          <h1>What are you waiting for?</h1>
        </div>
        <form action="../../DetailCourse" method="post">
        <div class="last">
        <button type="submit"  class="cart" value="javascript" name="name" readonly>Start Now!</button>
        </div>
        </form>
      </div>
    </div>
  </body>
</html>
