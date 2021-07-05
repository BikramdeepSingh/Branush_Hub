<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- DOCTYPE html -->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Video Player</title>
    <link rel="icon" type="image/png" href="../Image/favicon32.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css" />
    <link rel="stylesheet" href="../CSS/VideoPlayer.css">
</head>

<body>
 <%
  		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");//HTTP 1.1
		response.setHeader("Pragma","no-cache");//HTTP 1.0
		response.setHeader("Expires","0");//Proxies
  		
  		if(session.getAttribute("username")==null)
  		{
  			response.sendRedirect("./LoginMain.jsp");
  		}
  %>

    <nav>
        <div class="logo">
            <h1>Branush Hub</h1>
        </div>
        <ul class="nav-links">
            <a href="./Course.jsp">
                <li>Go Back</li>
            </a>
            <a href="./Logout.jsp">
                <li>Logout</li>
            </a>
        </ul>
        <div class="dark-theme">
            <i class="fas fa-sun"></i>
            <label class="switch">
                <input type="checkbox">
                <span class="slider round"></span>
            </label>
        </div>
    </nav>
    <div  class="player">
		<video class="video" width="920" height="520" controls >
		<source src="${url}">
		</video>	
   </div>

    <!-- Script -->
    <script src="../JS/Style.js"></script>
</body>

</html>
    