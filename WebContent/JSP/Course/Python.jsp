<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link  rel="stylesheet" href=../../CSS/CourseAll.css />
    <!-- Adding icon to our DialOwn Suite Project -->
    <link rel="icon" type="image/png" href="../../Image/favicon32.png">
    <title>Python</title>
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
    <nav class="python"></nav>
    <div class="about">
      <div class="edit-it">
        <div class="header-edit">
          <h2>About Python</h2>
        </div>
        <div class="header-desc">
          <p>
            Python is an interpreted, high-level, general-purpose programming
            language. Created by Guido van Rossum and first released in 1991.
            Its language constructs and  object-oriented approach aim to help programmers write clear,
            logical code for small and large-scale projects.
          </p>
        </div>
          <form action="../../DetailCourse" method="post">
         <div class="header-buttons">
        <button type="submit"  class="cart" value="python" name="name" readonly>Start</button>
        </div>
        </form>
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
            This Course contains all the basic topics as well the advance
            topics.
          </li>
          <li>
            30+ hours of videos.
          </li>
          <li>
            10+ Assignments
          </li>
          <li>
            Downloadable resources
          </li>
          <li>
            Complete Course at your own pace.
          </li>
          <li>
            Course also contains final Exam.
          </li>
          <li>
            Sit Back and Start coding.
          </li>
        </div>
        <div class="header-course">
          <h1>About Python</h1>
        </div>
        <div class="header-desc">
          <p>
            Python is an interpreted, high-level, general-purpose programming
            language. Created by Guido van Rossum and first released in 1991,
            Python's design philosophy emphasizes code readability with its
            notable use of significant whitespace. Its language constructs and
            object-oriented approach aim to help programmers write clear,
            logical code for small and large-scale projects.
          </p>
        </div>
        <div class="header-course">
          <h1>What holding you now!</h1>
        </div>
         <form action="../../DetailCourse" method="post">
         <div class="last">
        <button type="submit"  class="cart" value="python" name="name" readonly>Start Now!</button>
        </div>
        </form>
      </div>
    </div>
  </body>
</html>
