<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./css/login_options.css">
<title>Login Options</title>
</head>
<body>
	<header>
        <h1>Library Management System</h1>
        <div>
			<a href="index.jsp" class="btn"><strong>Home</strong></a> 
			<a href="register_options.jsp" class="btn"><strong>New Registration</strong></a>
		</div>
    </header>
    <div class="login-options-container">
        <h2>Choose Login Type According To Your Registration...</h2>
        <div class="login-options">
            <a href="login.jsp" class="login-button"><strong>User Login</strong></a>
            <a href="admin_login.jsp" class="login-button"><strong>Admin Login</strong></a>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>