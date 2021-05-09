<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Video Player</title>
    <link rel = "icon" href =".\images\favicon32.png" type = "image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css" />
    <link rel="stylesheet" href="CSS/VideoPlayer.css">
</head>

<body>

    <nav>
        <div class="logo">
            <h1>Branush Hub</h1>
        </div>
        <ul class="nav-links">
            <a href="./Course.jsp">
                <li>Go Back</li>
            </a>
            <a href="./LoginMain.jsp">
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

	
   <div class="iframe-container">
<iframe width="1080" height="580" src="https://www.youtube.com/embed/cl0a3i2wFcc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>   </div>
    <!-- 
     <div class="player">
    <video width="1080" height="720" controls >
	<source src="https://www.youtube.com/watch?v=n2B4lFmMNJA">
	</video>
	</div>
	-->
	
	
	
    <!-- Script -->
    <script src="JS/Style.js"></script>
</body>

</html>
    