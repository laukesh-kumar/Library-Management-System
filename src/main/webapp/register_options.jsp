<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./css/login_options.css">
<title>Registration Options</title>
<style type="text/css">

header {
  background-color: rgb(20, 78, 82);
  color: #fff;
  padding: 26px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  position: fixed;
  right: 0;
  top: 0;
  width: 98%;
}

header h1 {
  margin: 0;
}

header .btn {
  display: inline-block;
  padding: 15px 17px;
  background-color: rgb(0, 164, 164);
  color: #fff;
  text-decoration: none;
  border-radius: 4px;
  margin-left: 8px;
}

header .btn:first-child {
  margin-left: 0;
}
.btn {
  display: inline-block;
  padding: 10px 20px;
  background-color: rgb(0, 128, 0);
  color: #fff;
  text-decoration: none;
  border-radius: 4px;
}

.btn:hover {
  background-color: rgb(0, 125, 125);
}
footer {
  background-color: #333;
  color: #fff;
  padding: 10px;
  text-align: center;
  position: fixed;
  left: 0;
  bottom: 0;
  width: 98.5%;
}
</style>
</head>
<body>
	<header>
        <h1>Library Management System</h1>
        <div>
			<a href="index.jsp" class="btn"><strong>Home</strong></a> 
			<a href="login_options.jsp" class="btn"><strong>Login</strong></a>
		</div>
    </header>
    <div class="login-options-container">
        <h2>Choose Registration Type According To Your Need...</h2>
        <div class="login-options">
            <a href="register.jsp" class="login-button"><strong>User Registration</strong></a>
            <a href="admin_register.jsp" class="login-button"><strong>Admin Registration</strong></a>
        </div>
    </div>
    <footer>
    <p>&copy; 2023 Laukesh Library</p>
  </footer>
</body>
</html>