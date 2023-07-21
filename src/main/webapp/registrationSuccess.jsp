<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registration Successful</title>
  <link rel="stylesheet" href="./css/index.css">
  <link rel="stylesheet" href="./css/registrationSuccess.css">
  
</head>
<body>
  <header>
    <h1>Library Management System</h1>
    <div>
      <a href="index.jsp" class="btn"><strong>Home</strong></a>
      <a href="login.jsp" class="btn"><strong>Login</strong></a>
    </div>
  </header>

  <main>
    <div class="success-container">
      <h2>Registration Successful</h2>
      <p>Thank you for registering with us!</p>
      <p>Your registration details:</p>
      <ul>
        <li><strong>Name:</strong> <%= request.getParameter("name") %></li>
        <li><strong>Username:</strong> <%= request.getParameter("username") %></li>
        <li><strong>Gender:</strong> <%= request.getParameter("gender") %></li>
        <li><strong>City:</strong> <%= request.getParameter("city") %></li>
        <li><strong>Branch:</strong> <%= request.getParameter("branch") %></li>
      </ul>
      <p>Please proceed to the <a href="login.jsp">login page</a> to access your account.</p>
    </div>
  </main>

  <footer>
    <p>&copy; 2023 Your Library</p>
  </footer>
</body>
</html>
