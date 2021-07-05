<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link  rel="stylesheet" href="../../CSS/CourseAll.css" />
    <link rel="icon" type="image/png" href="../../Image/favicon32.png">
    <title>HTML Course</title>
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
    <nav class="html"></nav>
    <div class="about">
      <div class="edit-it">
        <div class="header-edit">
          <h2>About HTML</h2>
        </div>
        <div class="header-desc">
          <p>
            Hypertext Markup Language (HTML) is the standard markup language for
            documents designed to be displayed in a web browser. It can be
            assisted by technologies such as Cascading Style Sheets (CSS) and
            scripting languages such as JavaScript.
          </p>
        </div>
          <form action="../../DetailCourse" method="post">
          <div class="header-buttons">
        <button type="submit"  class="cart" value="html" name="name" readonly>Start</button>
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
            topics
          </li>
          <li>
            30+ hours of videos
          </li>
          <li>
            10+ assignments
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
          <h1>About HTML</h1>
        </div>
        <div class="header-desc">
          <p>
            Hypertext Markup Language (HTML) is the standard markup language for
            documents designed to be displayed in a web browser. It can be
            assisted by technologies such as Cascading Style Sheets (CSS) and
            scripting languages such as JavaScript.
          </p>
        </div>
        <div class="header-course">
          <h1>What holding you now!</h1>
        </div>
        <form action="../../DetailCourse" method="post">
         <div class="last">
        <button type="submit"  class="cart" value="html" name="name" readonly>Start Now!</button>>
        </div>
        </form>
      </div>
    </div>
  </body>
</html>
