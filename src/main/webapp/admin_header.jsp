<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "com.dto.LoginDTO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Header</title>
    <link rel="stylesheet" href="./css/header.css">
    
</head>
<body>
    <header>
        <h1>Library Management System</h1>
        <%if(request.getAttribute("loginDTO") != null) { %>
         <% LoginDTO loginDTO = (LoginDTO) request.getAttribute("loginDTO"); %>
        <h2><strong>Welcome! </strong><%= loginDTO.getUsername() %></h2>
        <%} %>
    </header>
    <div class="navbar">
        <a href="admin_dashboard.jsp">Dashboard</a>
        <a href="book.jsp">Books</a>
        <a href="books.jsp">Users</a>
        <a href="#">Borrowed Books</a>
        <a href="#">Reports</a>
        <a href="#">Settings</a>
        <a style="float: right;" href="admin_login.jsp">Logout</a>
    </div>
</body>
<script>
        // Function to set the active link based on the current URL
        function setActiveLink() {
            var currentURL = window.location.href;
            var links = document.getElementsByClassName('navbar')[0].getElementsByTagName('a');
            for (var i = 0; i < links.length; i++) {
                if (currentURL.indexOf(links[i].getAttribute('href')) > -1) {
                    links[i].classList.add('active');
                } else {
                    links[i].classList.remove('active');
                }
            }
        }

        // Call the function when the page is loaded
        window.onload = setActiveLink;
    </script>
</html>
