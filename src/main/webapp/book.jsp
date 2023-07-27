<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Books - Library Management System</title>
    <link rel="stylesheet" href="./css/book.css">
    <style type="text/css">
	
</style>
</head>
<body>
    <%@ include file="admin_header.jsp" %>

    <div class="container">
        <h2 class="book-heading">All Books</h2>
        <div class="search-bar">
            <input type="text" placeholder="Search by title, author, genre..." class="search-input">
            <button class="search-button">Search</button>
        </div>
        <div class="book-actions">
            <a href="add_new_book_form.jsp" class="btn btn-add"><strong>Add New Book</strong></a>
        </div>
        <div class="book-list">
            <!-- Sample book elements - Replace this with dynamic data from the database -->
            <div class="book" id="book1">
              <!--   <img src="./images/user_dashboard.jpg" alt="Book Cover" class="book-cover"> -->
                <h3 class="book-title">Book Title 1</h3>
                <p class="book-info">Author: Author Name 1</p>
                <p class="book-info">ISBN: 9781234567890</p>
                <p class="book-info">Genre: Fiction</p>
                <p class="book-info">Publication Date: 2023-07-01</p>
                <p class="book-info">Available Copies: 5</p>
                <a href="edit_form.jsp" class="btn-e btn-edit"><strong>Edit</strong></a>
                <a href="delete_form.jsp" class="btn-e btn-delete"><strong>Delete</strong></a>
            </div>
            <div class="book" id="book1">
              <!--   <img src="./images/user_dashboard.jpg" alt="Book Cover" class="book-cover"> -->
                <h3 class="book-title">Book Title 1</h3>
                <p class="book-info">Author: Author Name 1</p>
                <p class="book-info">ISBN: 9781234567890</p>
                <p class="book-info">Genre: Fiction</p>
                <p class="book-info">Publication Date: 2023-07-01</p>
                <p class="book-info">Available Copies: 5</p>
                <a href="edit_form.jsp" class="btn-e btn-edit"><strong>Edit</strong></a>
                <a href="delete_form.jsp" class="btn-e btn-delete"><strong>Delete</strong></a>
            </div>
            <div class="book" id="book1">
                <!-- <img src="./images/user_dashboard.jpg" alt="Book Cover" class="book-cover"> -->
                <h3 class="book-title">Book Title 1</h3>
                <p class="book-info">Author: Author Name 1</p>
                <p class="book-info">ISBN: 9781234567890</p>
                <p class="book-info">Genre: Fiction</p>
                <p class="book-info">Publication Date: 2023-07-01</p>
                <p class="book-info">Available Copies: 5</p>
                <a href="edit_form.jsp" class="btn-e btn-edit"><strong>Edit</strong></a>
                <a href="delete_form.jsp" class="btn-e btn-delete"><strong>Delete</strong></a>
            </div>
          
            <!-- Add more book elements here -->

        </div>
        
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
