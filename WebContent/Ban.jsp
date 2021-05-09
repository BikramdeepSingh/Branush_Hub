<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <!-- Adding icon to our Branush Hub Project -->
    <link rel = "icon" href ="../Image/fav.png"type="image/png">
    <title>Banned Message</title>
    <style>
    	@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap");

body {
  margin: 0;
  height: 100vh;
  width: 100%;
  font-family: "Poppins", sans-serif;
  overflow: hidden;
  background-color: black;
}

section {
  display: grid;
  grid-template-columns: repeat(10, auto);
}
section div {
  background-color: white;
  height: 100vh;
  transition: background-color 1s;
}

h1 {
  font-size: 5em;
  position: absolute;
  color: white;
  top: 40%;
  left: 12%;
  opacity: 0;
  z-index: 2;
}
.extra {
  position: absolute;
  top: 60%;
  left: 12%;
  opacity: 0;
  z-index: 2;
}
.tag {
  position: absolute;
  top: 45%;
  left: 15%;
  font-size: 15px;
  text-decoration: none;
  color: rgb(134, 134, 134);
  border: 1px solid rgb(134, 134, 134);
  padding-left: 5px;
  padding-right: 5px;
  padding-top: 5px;
  padding-bottom: 5px;
  text-transform: uppercase;
  transition: color 1s ease-in-out;
  transition: background-color 1s ease-in-out;
}
.tag:hover {
  color: black;
  border: none;
  border: 1px solid black;
  background-color: white;
}
    	
    </style>
  </head>
  <body>
    <h1>You are banned</h1>
    <a href="HomePage.jsp#contact" class="tag">take me to contact page</a>

    <section>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/animejs@3.0.1/lib/anime.min.js"></script>
    <script>
    let tl = anime.timeline({
    	  easing: "easeOutExpo",
    	  duration: 750,
    	});

    	tl.add({
    	  targets: "section div",
    	  width: "100%",
    	  backgroundColor: "rgb(240, 231, 132)",
    	  delay: anime.stagger(100), // increase delay by 100ms for each elements.
    	})
    	  .add({
    	    targets: "section div",
    	    width: "90%",
    	    backgroundColor: "rgb(240, 231, 132)",
    	  })
    	  .add(
    	    {
    	      targets: "h1",
    	      top: "20%",
    	      opacity: 1,
    	      
    	    },
    	    "-=200"
    	  );

    	var squash = anime({
    	  targets: "section",
    	  scaleY: "2",
    	  scaleX: "2",
    	  translateX: "40%",
    	  rotate: "45deg",
    	  duration: 5000,

    	  autoplay: false,
    	});

    	document.querySelector("h1").addEventListener("mouseover", () => {
    	  squash.play();
    	});

    </script>
  </body>
</html>
