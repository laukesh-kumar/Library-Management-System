<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import = "com.dto.LoginDTO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Dashboard - Library Management System</title>
    <link rel="stylesheet" href="./css/header.css">
</head>
<body>
    <header>
        <h1>Library Management System</h1>
        <%if(request.getAttribute("loginDTO") != null) { %>
         <% LoginDTO loginDTO = (LoginDTO) request.getAttribute("loginDTO"); %>
        <h2> <strong>Welcome!  </strong><%= loginDTO.getUsername() %></h2>
        <%} %>
    </header>
    <div class="navbar">
        <a class="active" href="#">Dashboard</a>
        <a href="#">Books</a>
        <a href="#">Profile</a>
        <a href="#">Borrowed Books</a>
        <a href="#">Settings</a>
        <a style="float: right;" href="login.jsp">Logout</a>
    </div>
</body>
</html>
