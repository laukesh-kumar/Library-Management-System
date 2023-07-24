<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./css/index.css">
  <link rel="stylesheet" href="./css/login.css">
  <title>Login - Library Management System</title>
  <style type="text/css">
  
  .error-message {
        color: red;
        font-size: 18px;
        margin-bottom: 20px;
        text-align: center; /* Center-align the error message */
    }
    
    </style>

</head>
<body>
	<header>
		<h1>Library Management System</h1>
		<div>
			<a href="index.jsp" class="btn"><strong>Home</strong></a> 
			<a href="register.jsp" class="btn"><strong>New Registration</strong></a>
		</div>
	</header>
  <div class="login-container">
    <form class="login-form" action="LoginController" method="POST">
      <h2>Login</h2>
      <%-- Check for the presence of the error message and display it --%>
            <% if (request.getAttribute("errorMessage") != null) { %>
                <div class="error-message">
                    <%= request.getAttribute("errorMessage") %>
                </div>
            <% } %>
      <div class="form-group">
        <label for="username">Username:</label>
        <input type="email" name="username" value="" required>
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password"  name="password" value="" required>
      </div>
      <div class="form-group">
        <button type="submit" class="section-button">Login</button>
        <!-- <a href="register.jsp" class="register-link">New Registration</a> -->
        <a href="forgot-password.jsp" class="forgot-password-link">Forgot Password?</a>
      </div>
    </form>
  </div>
  <jsp:include page="footer.jsp" />
</body>
</html>
