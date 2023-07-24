<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/index.css">
  <title>Library Management System</title>
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
        <a href="login.jsp" class="btn">Get Started</a>
      </div>
    </section>
  </main>

  <jsp:include page="footer.jsp" />

  <script >// script.js
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
