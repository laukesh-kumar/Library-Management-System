<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./css/login_options.css">
<title>Registration Options</title>
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
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>