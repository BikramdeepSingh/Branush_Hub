<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link  rel="stylesheet" href=../../CSS/CourseAll.css />
    <!-- Adding icon to our DialOwn Suite Project -->
    <link rel="icon" type="image/png" href="../../Image/favicon32.png">
    <title>SQL</title>
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
    <nav class="sql"></nav>
    <div class="about">
      <div class="edit-it">
        <div class="header-edit">
          <h2>About SQL</h2>
        </div>
        <div class="header-desc">
          <p>
            SQL is a domain-specific language used in programming and designed
            for managing data held in a relational database management system
            (RDBMS), or for stream processing in a relational data stream
            management system (RDBMS). It is particularly useful in handling
            structured data, i.e. data incorporating relations among entities
            and variables.
          </p>
        </div>
   <form action="../../DetailCourse" method="post">
         <div class="header-buttons">
         <br><br><br>
        <button type="submit"  class="cart" value="sql" name="name" readonly>Start</button>
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
          <h1>About SQL</h1>
        </div>
        <div class="header-desc">
          <p>
            SQl is a domain-specific language used in programming and designed
            for managing data held in a relational database management system
            (RDBMS), or for stream processing in a relational data stream
            management system (RDSMS). It is particularly useful in handling
            structured data, i.e., data incorporating relations among entities
            and variables.
          </p>
        </div>
        <div class="header-course">
          <h1>What is holding you back now?</h1>
        </div>
         <form action="../../DetailCourse" method="post">
         <div class="last">
        <button type="submit"  class="cart" value="sql" name="name" readonly>Start Now!</button>
        </div>
        </form>
      </div>
    </div>
  </body>
</html>
