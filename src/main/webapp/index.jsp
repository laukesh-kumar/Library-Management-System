<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- <link rel="stylesheet" href="./css/index.css"> --> 
  <title>Library Management System</title>
  <style type="text/css">
  /*@charset "UTF-8";*/
body {
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
  margin: 0;
  padding: 0;
}

header {
  background-color: rgb(20, 78, 82);
  color: #fff;
  padding: 26px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

header h1 {
  margin: 0;
}

header .btn {
  display: inline-block;
  padding: 15px 17px;
  background-color: rgb(0, 164, 164);
  color: #fff;
  text-decoration: none;
  border-radius: 4px;
  margin-left: 8px;
}

header .btn:first-child {
  margin-left: 0;
}

main {
  padding: 7px;
}

.hero {
  height: 620px;
  position: relative;
}

.slideshow {
  position: relative;
  width: 100%;
  height: 100%;
  overflow: hidden;
}

.slide {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  opacity: 0;
  transition: opacity 0.5s ease-in-out;
}

.slide.active {
  opacity: 1;
}

.hero-content {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
  color: #fff;
}

.btn {
  display: inline-block;
  padding: 10px 20px;
  background-color: rgb(0, 128, 0);
  color: #fff;
  text-decoration: none;
  border-radius: 4px;
}

.btn:hover {
  background-color: rgb(0, 125, 125);
}
  </style>
</head>
<body>
	<header>
		<h1>Library Management System</h1>
		<div>
			<a href="login_options.jsp" class="btn"><strong>Login</strong></a> 
			<a href="register_options.jsp" class="btn"><strong>Register</strong></a>
		</div>
	</header>


	<main>
    <section class="hero">
      <div class="slideshow">
        <img class="slide" src="./image/hero-image.jpg" alt="Image 1">
        <img class="slide" src="./image/hero-image2.jpg" alt="Image 2">
        <img class="slide" src="./image/hero-image3.jpg" alt="Image 3">
      </div>
      <div class="hero-content">
        <h2>Manage Your Library Efficiently</h2>
        <p>Access a wide range of features for book cataloging, member management, borrowing, and more.</p>
        <a href="login_options.jsp" class="btn">Get Started</a>
      </div>
    </section>
  </main>

  <jsp:include page="footer.jsp" />

  <script >
  const slides = document.querySelectorAll('.slide');
  let currentSlide = 0;

  function showSlide(n) {
    slides.forEach((slide) => {
      slide.classList.remove('active');
    });

    slides[n].classList.add('active');
  }

  function nextSlide() {
    currentSlide++;
    if (currentSlide >= slides.length) {
      currentSlide = 0;
    }
    showSlide(currentSlide);
  }

  function startSlideshow() {
    showSlide(currentSlide);
    setInterval(nextSlide, 3000); // Change slide every 3 seconds
  }

  startSlideshow();
</script>
</body>
</html>
