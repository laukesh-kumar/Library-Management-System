<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="wnameth=device-wnameth, initial-scale=1.0">
  <link rel="stylesheet" href="./css/register.css">
 
  <title>Register - Library Management System</title>
  <style type="text/css">
  
  .form-group input[type="email"] {
	    	width: 100%;
	    	padding: 12px;
	    	border: 1px solid #ccc;
	    	border-radius: 5px;
	    	}
	    	 .form-group select {
      width: 104%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 5px;
	}
    .form-group .section-button {
      display: inline-block;
      padding: 14px 46%;
      background-color: #007bff;
      color: #fff;
      font-weight: bold;
      font-size: 18px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .form-group .section-button:hover {
      background-color: #0056b3;
    }
	    	
  </style>
</head>
<body>
	<header>
		<h1>Library Management System</h1>
		<div>
			<a href="index.jsp" class="btn"><strong>Home</strong></a> <a
				href="login.jsp" class="btn"><strong>Login</strong></a>
		</div>
	</header>
	<div class="register-container">
  <form class="register-form" action="RegisterController" method="POST">
    <h2>New Registration</h2>
    <div class="form-group">
      <label for="fullname">Full Name:</label>
      <input type="text" name="name" value="" required>
    </div>
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="email" name="username" value="" required>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" name="password" value="" required>
    </div>
    <div class="form-group">
      <label for="confirmPassword">Confirm Password:</label>
      <input type="password" name="confirmPassword" value="" required>
    </div>
    <div class="form-group">
      <label for="gender">Gender:</label>
      <select name="gender" required>
        <option value="">Select Gender</option>
        <option value="MALE">Male</option>
        <option value="FEMALE">Female</option>
        <option value="OTHER">Other</option>
      </select>
    </div>
    <div class="form-group">
      <label for="city">City:</label>
      <input type="text" name="city" value="" required>
    </div>
    <div class="form-group">
      <label for="branch">Branch:</label>
      <input type="text" name="branch" value="" required>
    </div>
    <div class="form-group">
      <button type="submit" class="section-button">Register</button>
    </div>
    <div class="form-group">
      <a href="login.jsp" class="login-link">Back to Login</a>
    </div>
  </form>
</div>

 	<jsp:include page="footer.jsp" />
</body>
</html>
