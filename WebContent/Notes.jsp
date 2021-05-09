<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
     <title>Notes</title>
    <link rel = "icon" href =".\images\favicon32.png" type = "image/x-icon">
    <link rel="stylesheet" href="CSS/Notes.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css"
    />

   
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
   <div class="mediaquery">
      <h2>Please turn on Desktop view to access the site</h2>
    </div>
    <nav>
      <div class="logo">
        <h1>
          Branush Hub
          <span class="title-logo">Notes</span>
        </h1>
      </div>
      <div class="nav-links">
        <a href="Logout.jsp">Logout</a>
      </div>
      <div class="switch-theme">
        <i id="icon" class="fas fa-sun"></i>
        <label class="switch">
          <input id="switch" type="checkbox" />
          <span class="slider round"></span>
        </label>
      </div>
    </nav>
    
    <div class="ilu">
      <img src="Image/notes1.svg" alt="" />
    </div>

    <div class="main"></div>
    <div class="select-section">
      <div class="select-card">
        <div class="image">
          <div class="border">
            <i class="fas fa-stream"></i>
          </div>
        </div>
        <div class="btn">
          <a href="#stream-page">Select Stream</a>
        </div>
      </div>
      <div class="select-card">
        <div class="image">
          <div class="border">
            <i class="fas fa-upload"></i>
          </div>
        </div>
        <div class="btn">
          <a href="#upload">Upload</a>
        </div>
      </div>
    </div>

    <div class="stream-page" id="stream-page">
      <div class="header-stream">
        <h1>Select Stream</h1>
      </div>
      <div class="all-streams">
        <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-tv"></i></div>
          </div>
          <div class="name">
            <a href="#Computer Science">Computer Science</a>
          </div>
        </div>
        <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-memory"></i></div>
          </div>
          <div class="name">
            <a href="#Information Technolgy">Information Technolgy</a>
          </div>
        </div>
        <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-cogs"></i></div>
          </div>
          <div class="name">
            <a href="#Mechanical Enginnering">Mechanical Enginnering</a>
          </div>
        </div>
         <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-cogs"></i></div>
          </div>
          <div class="name">
            <a href="#Electrical Engineering">Electrical Engineering</a>
          </div>
        </div>
      </div>
    </div>
     
     <div class="main-page" id="Computer Science">
      <div class="header-title">
        <h1>Computer Science</h1>
      </div>
    <div class="all-semesters">
        <div class="line">
          <a href="https://drive.google.com/drive/folders/1UuPFr6ZAlQL12vCOx_HCr5RQVaPoZR9t?usp=sharing">Semester - 1</a>
          <a href="https://drive.google.com/drive/folders/1sGeEg4XFhWBy5mdhuASD26jTzR2fMibn?usp=sharing">Semester - 2</a>
          <a href="https://drive.google.com/drive/folders/1turiG-vLMX42z4rHxhTxgvx7pLHLYR2F?usp=sharing">Semester - 3</a>
        </div>
        <div class="line">
          <a href="https://drive.google.com/drive/folders/19Apjw8qnip0OhWIxugbVLIExGW6AA91K?usp=sharing">Semester - 4</a>
          <a href="https://drive.google.com/drive/folders/1lgO5EJpJW9r1h8qUeBz_QhwVcKI7smrx?usp=sharing">Semester - 5</a>
          <a href="https://drive.google.com/drive/folders/1LBkRIGk0QJ02EaFmYjVrsjlRtgiXsrgl?usp=sharing">Semester - 6</a>
        </div>
        <div class="line">
          <a href="https://drive.google.com/drive/folders/1S94GeHq3sBFaNcDa1sxgm9zCY11nEt7G?usp=sharing">Semester - 7</a>
        </div>
      </div>
    </div>
    
     <div class="main-page" id="Information Technolgy">
      <div class="header-title">
        <h1>Information Technolgy</h1>
      </div>
    <div class="all-semesters">
        <div class="line">
          <a href="#">Semester - 1</a>
          <a href="#">Semester - 2</a>
          <a href="#">Semester - 3</a>
        </div>
        <div class="line">
          <a href="#">Semester - 4</a>
          <a href="#">Semester - 5</a>
          <a href="#">Semester - 6</a>
        </div>
        <div class="line">
          <a href="#">Semester - 7</a>
        </div>
      </div>
    </div>
    
     <div class="main-page" id="Mechanical Enginnering">
      <div class="header-title">
        <h1>Mechanical Enginnering</h1>
      </div>
    <div class="all-semesters">
        <div class="line">
          <a href="#">Semester - 1</a>
          <a href="#">Semester - 2</a>
          <a href="#">Semester - 3</a>
        </div>
        <div class="line">
          <a href="#">Semester - 4</a>
          <a href="#">Semester - 5</a>
          <a href="#">Semester - 6</a>
        </div>
        <div class="line">
          <a href="#">Semester - 7</a>
        </div>
      </div>
    </div>
    
     <div class="main-page" id="Electrical Engineering">
      <div class="header-title">
        <h1>Electrical Engineering</h1>
      </div>
    <div class="all-semesters">
        <div class="line">
          <a href="#">Semester - 1</a>
          <a href="#">Semester - 2</a>
          <a href="#">Semester - 3</a>
        </div>
        <div class="line">
          <a href="#">Semester - 4</a>
          <a href="#">Semester - 5</a>
          <a href="#">Semester - 6</a>
        </div>
        <div class="line">
          <a href="#">Semester - 7</a>
        </div>
      </div>
    </div>
    
    <div class="stream-page" id="upload">
      <div class="header-stream">
        <h1>Upload</h1>
      </div>
      <div class="all-streams">
        <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-tv"></i></div>
          </div>
          <div class="name">
            <a href="https://drive.google.com/drive/folders/17kMAG1jYxIstFpT3VeuDT-figTLSdU7B?usp=sharing">Computer Science</a>
          </div>
        </div>
        <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-memory"></i></div>
          </div>
          <div class="name">
            <a href="https://drive.google.com/drive/folders/1Pyho-J7OPh3zhPlVQaUpb96rva7UUNWJ?usp=sharing">Information Technolgy</a>
          </div>
        </div>
        <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-cogs"></i></div>
          </div>
          <div class="name">
            <a href="https://drive.google.com/drive/folders/1xnhZJJe-x9wE8fZhyS_WHfeWQ9SfcFmk?usp=sharing">Mechanical Enginnering</a>
          </div>
        </div>
         <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-cogs"></i></div>
          </div>
          <div class="name">
            <a href="https://drive.google.com/drive/folders/1E4ml3LNtkdNFg-UsL8Kow1IkVlI54oMj?usp=sharing">Electrical Engineering</a>
          </div>
        </div>
      </div>
    </div>
   
    <script src="JS/Style.js"></script>
  </body>
</html>
    