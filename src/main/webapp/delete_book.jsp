<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/book.css">
    <title>Delete Book - Library Management System</title>
    <link rel="stylesheet" href="./css/form_styles_of_add_new_and_edit.css">
</head>
<body>
    <%@ include file="admin_header.jsp" %>

    <div class="container">
        <h2>Delete Book</h2>
        <form action="delete_book_process.jsp" method="post">
            <div class="form-group">
                <label for="bookTitle">Book Title:</label>
                <input type="text" id="bookTitle" name="bookTitle" placeholder="Enter book title" required>
            </div>
            <div class="form-group">
                <label for="bookAuthor">Author:</label>
                <input type="text" id="bookAuthor" name="bookAuthor" placeholder="Enter author name" required>
            </div>
            <div class="form-group">
                <label for="bookISBN">ISBN:</label>
                <input type="text" id="bookISBN" name="bookISBN" placeholder="Enter ISBN" required>
            </div>
            <button type="submit" class="btn">Delete Book</button>
             <a href="book.jsp" class="btn"><strong>Back</strong></a>
        </form>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
