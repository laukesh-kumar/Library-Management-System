<%@page import="com.dto.AdminBookDTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add New Book</title>
    <link rel="stylesheet" href="./css/book.css">
</head>
<body>
    <%@ include file="admin_header.jsp" %>

    <div class="container">
        <h2>Add New Book</h2>
        
        <form id="addBookForm" action="AdminBooksController" method="POST">
            <!-- Include the book form fields -->
            <%@ include file="book_form_fields.jsp" %>
            <div class="form-group">
                <button type="submit" class="submit-button">Add Book</button>
                <a href="book.jsp" class="btn"><strong>Back</strong></a>
            </div>
        </form>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
