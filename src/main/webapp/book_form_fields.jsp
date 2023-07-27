<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/form_styles_of_add_new_and_edit.css">
</head>
<body>
	<div class="book">
	    <!-- <img src="./images/user_dashboard.jpg" alt="Book Cover" class="book-cover"> -->
	    <h3 class="book-title">
	        <label for="title">Book Title:</label>
	        <input type="text"  name="title"  val="" required>
	    </h3>
	    <p class="book-info">
	        <label for="author">Author:</label>
	        <input type="text" name="author" val="" required>
	    </p>
	    <p class="book-info">
	        <label for="isbn">ISBN:</label>
	        <input type="text"  name="isbn" val="" required>
	    </p>
	    <p class="book-info">
	        <label for="genre">Genre:</label>
	        <input type="text"  name="genre" val="" required>
	    </p>
	    <p class="book-info">
	        <label for="publicationDate">Publication Date:</label>
	        <input type="date"  name="publicationDate" val="" required>
	    </p>
	    <p class="book-info">
	        <label for="availableCopies">Available Copies:</label>
	        <input type="number" name="availableCopies" val="" required>
	    </p>
  </div>
	
</body>
</html>