<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="com.dto.AdminBookDTO" %>
<%@ page import ="java.util.ArrayList" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Books - Library Management System</title>
    <link rel="stylesheet" href="./css/book.css">
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
			<form action="AdminBooksController" method="POST">
				<button type="submit" class="btn"><strong>Show books</strong></button>
			</form>
			<a href="add_new_book_form.jsp" class="btn btn-add"><strong>Add New Book</strong></a>
            <%if(request.getAttribute("adminBookDTO") != null){ %>
        <h2 style = "color: green"><center>New book Added Successfully....</center></h2>
        <%} %>
        </div>
        <div class="book-list">
            <% if (request.getAttribute("bookList") != null) {
                ArrayList<AdminBookDTO> bookList = (ArrayList<AdminBookDTO>) request.getAttribute("bookList");
                for (AdminBookDTO book : bookList) {
            %>
            <div class="book" id="book1">
                <!-- <img src="./images/user_dashboard.jpg" alt="Book Cover" class="book-cover"> -->
                <h3 class="book-title"><%= book.getTitle() %></h3>
                <p class="book-info">Author: <%= book.getAuthor() %></p>
                <p class="book-info">ISBN: <%= book.getIsbn() %></p>
                <p class="book-info">Genre: <%= book.getGenre() %></p>
                <p class="book-info">Publication Date: <%= book.getPublicationDate() %></p>
                <p class="book-info">Available Copies: <%= book.getAvailableCopies() %></p>
                <a href="edit_form_book.jsp" class="btn-e btn-edit"><strong>Edit</strong></a>
                <a href="delete_book.jsp" class="btn-e btn-delete"><strong>Delete</strong></a>
            </div>
            <% } } %>
        </div>
        
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
