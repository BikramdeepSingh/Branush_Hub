<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- DOCTYPE html -->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
     <title>Notes</title>
    <link rel="icon" type="image/png" href="../Image/favicon32.png" />
    <link rel="stylesheet" href="../CSS/Notes.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css"
    />

    <title>Notes</title>
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
        <h1>
          Branush Hub
          <span class="title-logo">Notes</span>
        </h1>
      </div>
      <div class="nav-links">
        <a href="./Logout.jsp">Logout</a>
      </div>
      <div class="switch-theme">
        <i id="icon" class="fas fa-sun"></i>
        <label class="switch">
          <input id="switch" type="checkbox" />
          <span class="slider round"></span>
        </label>
      </div>
    </nav>

    <div class="main">
    <p align="center">
    <img src="../Image/notes1.svg" alt="Image could not load" />
    </p>
    </div>
    <div class="select-section">
      <div class="select-card">
        <div class="image">
          <div class="border">
            <i class="fas fa-stream"></i>
          </div>
        </div>
        <div class="btn">
          <a href="#stream-page">Select Your Stream:</a>
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
        <h1>Select Your Stream:</h1>
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
            <a href="#Information Technology">Information Technology</a>
          </div>
        </div>
        <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-cogs"></i></div>
          </div>
          <div class="name">
            <a href="#Mechanical Engineering">Mechanical Engineering</a>
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
    
     <div class="main-page" id="Information Technology">
      <div class="header-title">
        <h1>Information Technology</h1>
      </div>
    <div class="all-semesters">
        <div class="line">
          <a href="https://drive.google.com/drive/folders/1-fyFmONTFKCnoD663L8K4hdj_noyhYmW?usp=sharing">Semester - 1</a>
          <a href="https://drive.google.com/drive/folders/1m4Rh9q8CW2pfO3vlDPjRPnJzuV6aXiOA?usp=sharing">Semester - 2</a>
          <a href="https://drive.google.com/drive/folders/18uk6wocPtIiIrFqPZ5zBiV7rlh7aXSi5?usp=sharing">Semester - 3</a>
        </div>
        <div class="line">
          <a href="https://drive.google.com/drive/folders/1nWy3m8heiqPaEg5hk6y4s93WChegHdXt?usp=sharing">Semester - 4</a>
          <a href="https://drive.google.com/drive/folders/1z6cYdSThhPPAZC7OfNFqUY30QP1mbElZ?usp=sharing">Semester - 5</a>
          <a href="https://drive.google.com/drive/folders/1GRZ5tpoxlPHMpzKq-HKAxR09kFZ04Wrj?usp=sharing">Semester - 6</a>
        </div>
        <div class="line">
          <a href="https://drive.google.com/drive/folders/1Vy7O3sIBgUZBvJPIejpMJsxCWvc0s_oB?usp=sharing">Semester - 7</a>
        </div>
      </div>
    </div>
    
     <div class="main-page" id="Mechanical Engineering">
      <div class="header-title">
        <h1>Mechanical Engineering</h1>
      </div>
    <div class="all-semesters">
        <div class="line">
          <a href="https://drive.google.com/drive/folders/1iezNR-3m0IAoQtj07lLSOaSJ50oMTXY0?usp=sharing">Semester - 1</a>
          <a href="https://drive.google.com/drive/folders/19iLMHMsm2VY8C3nzwrwDIELRQD45hF9Q?usp=sharing">Semester - 2</a>
          <a href="https://drive.google.com/drive/folders/1RlGMdbW8WZqxic_lR_EQ7pvBaXUbYqTf?usp=sharing">Semester - 3</a>
        </div>
        <div class="line">
          <a href="https://drive.google.com/drive/folders/1Un9WiQ_8G7yX8LeANzAVQ7wT8RXiTZX7?usp=sharing">Semester - 4</a>
          <a href="https://drive.google.com/drive/folders/1z7fvhVVm1CtkB7DBxs9i5Z9T-N1bHuQr?usp=sharing">Semester - 5</a>
          <a href="https://drive.google.com/drive/folders/1VS5FglE6UyTUNiDOtdok7BgLEhsWYbwp?usp=sharing">Semester - 6</a>
        </div>
        <div class="line">
          <a href="https://drive.google.com/drive/folders/13Wp5sDPMFWjEzvvUfgfyaZr9ba6RYlxr?usp=sharing">Semester - 7</a>
        </div>
      </div>
    </div>
    
     <div class="main-page" id="Electrical Engineering">
      <div class="header-title">
        <h1>Electrical Engineering</h1>
      </div>
    <div class="all-semesters">
     <div class="line">
          <a href="https://drive.google.com/drive/folders/1OGBLp5IcVIsoqiHSwgRTfSGdLdv3XFf9?usp=sharing">Semester - 1</a>
          <a href="https://drive.google.com/drive/folders/1DMph4SbrtgdPnInsW1vOCFvmeWL5P0tm?usp=sharing">Semester - 2</a>
          <a href="https://drive.google.com/drive/folders/1iWZGvca7Rp58nCBLI5YPBYV_8zxGK75b?usp=sharing">Semester - 3</a>
        </div>
        <div class="line">
          <a href="https://drive.google.com/drive/folders/1ZVPCmKIihA4_plsj7U4d3qelNQvwvVDG?usp=sharing">Semester - 4</a>
          <a href="https://drive.google.com/drive/folders/1EkQJHMqWH63EiS0yJAa48zvqMxeEquvm?usp=sharing">Semester - 5</a>
          <a href="https://drive.google.com/drive/folders/1_ppNoWw7r0YJST0PR1xfmjKIbRJpU5Ps?usp=sharing">Semester - 6</a>
        </div>
         <div class="line">
          <a href="https://drive.google.com/drive/folders/1kUiawSzBADouUsxFHiPwJqgrs0x3It4G?usp=sharing">Semester - 7</a>
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
            <a href="https://drive.google.com/drive/folders/1W161MLiza1AD0xFQuf2yYoF8EhsHorTZ?usp=sharing">Computer Science</a>
          </div>
        </div>
        <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-memory"></i></div>
          </div>
          <div class="name">
            <a href="https://drive.google.com/drive/folders/18FZ-ip5N4u_qd_rn8exIEaocwt-5DNdO?usp=sharing">Information Technology</a>
          </div>
        </div>
        <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-cogs"></i></div>
          </div>
          <div class="name">
            <a href="https://drive.google.com/drive/folders/1pVNQPuwnyV2ynsmA-hcxsu6KjmK7N_5n?usp=sharing">Mechanical Engineering</a>
          </div>
        </div>
         <div class="card-stream">
          <div class="title">
            <div class="border"><i class="fas fa-cogs"></i></div>
          </div>
          <div class="name">
            <a href="https://drive.google.com/drive/folders/1TQhWPcRuxE_9LU-kRZq6ZF0WeWFpoAVL?usp=sharing">Electrical Engineering</a>
          </div>
        </div>
      </div>
    </div>
   
    <script src="../JS/Style.js"></script>
  </body>
</html>
    