<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link href="CSS/specificcourse.css" rel="stylesheet" href="./style.css" />
    <!-- Adding icon to our Branush Hub Project -->
    <link rel = "icon" href ="https://cdn.iconscout.com/icon/free/png-512/dos-3-570114.png" type = "image/x-icon">
    <title>Web Development</title>
  </head>
  <body>
  <%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
	response.setHeader("Pragma","no-cache");//HTTP 1.0
	response.setHeader("Expires","0");//Proxies
		if(session.getAttribute("username")==null){
			if(session.getAttribute("username1")==null){
				if(session.getAttribute("username2")==null){
					response.sendRedirect("HomePage.jsp");
				}
			}
		}
  %>
    <nav class="web"></nav>
    <div class="about">
      <div class="edit-it">
        <div class="header-edit">
          <h2>About Web Development</h2>
        </div>
        <div class="header-desc">
          <p>
            Web development is the work involved in developing a website for the
            Internet (World Wide Web) or an intranet (a private network). Web
            development can range from developing a simple single static page of
            plain text to complex web-based internet applications (web apps),
            electronic businesses, and social network services.
          </p>
        </div>
        <div class="header-buttons">
               <a href="https://drive.google.com/drive/folders/1QUSUSGUqAKbztzx-8XYjtcoONVRO2_ui?usp=sharing" class="cart">Enroll For Free</a>
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
          <h1>About Web development</h1>
        </div>
        <div class="header-desc">
          <p>
            Web development is the work involved in developing a website for the
            Internet (World Wide Web) or an intranet (a private network).Web
            development can range from developing a simple single static page of
            plain text to complex web-based internet applications (web apps),
            electronic businesses, and social network services.
          </p>
        </div>
        <div class="header-course">
          <h1>What holding you now!</h1>
        </div>
        <div class="last">
                <a href="https://drive.google.com/drive/folders/1QUSUSGUqAKbztzx-8XYjtcoONVRO2_ui?usp=sharing" class="cart">Enroll For Free</a>
        </div>
      </div>
    </div>
  </body>
</html>
