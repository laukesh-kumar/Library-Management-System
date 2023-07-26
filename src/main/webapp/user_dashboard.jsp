<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Dashboard - Library Management System</title>
    <link rel="stylesheet" href="./css/user_dashboard.css">
    <style type="text/css">
    /* Reset some default styles */
body, h1, h2, p {
    margin: 0;
    padding: 0;
}

/* Global Styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

/* User Dashboard Styles */
header {
    background-color: #007bff;
    color: #fff;
    text-align: center;
    padding: 10px;
}

.dashboard-content {
    margin-top: 20px;
    text-align: center;
}

.greeting {
    margin-bottom: 20px;
}

.greeting h1 {
    font-size: 36px;
    margin-bottom: 10px;
    color: #333;
}

.greeting p {
    font-size: 18px;
    color: #666;
}

.dashboard-options {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
    justify-items: center;
    margin-top: 30px;
}

.option-card {
    background-color: #fff;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    border-radius: 10px;
    text-align: center;
    text-decoration: none;
    color: #333;
    transition: transform 0.3s ease;
}

.option-card img {
    width: 80px;
    margin-bottom: 20px;
}

.option-card h2 {
    font-size: 24px;
    margin-bottom: 10px;
    color: #007bff;
}

.option-card p {
    font-size: 16px;
    color: #666;
}

.option-card:hover {
    transform: translateY(-5px);
}
    
    </style>
</head>
<body>
    <%@ include file="user_header.jsp" %>

    <div class="dashboard-content">
        <div class="greeting">
            <h1>Welcome to Your Dashboard!</h1>
            <p>Explore the Library Management System's features and manage your account.</p>
        </div>
        <div class="dashboard-options">
            <a href="#" class="option-card">
                <img src="./images/books-icon.png" alt="Books">
                <h2>Books</h2>
                <p>Explore and discover new books in the library.</p>
            </a>
            <a href="#" class="option-card">
                <img src="../image/hero-image.jpg" alt="Profile">
                <h2>Profile</h2>
                <p>View and update your profile information.</p>
            </a>
            <a href="#" class="option-card">
                <img src="../image/admin_dashboard.jpg" alt="Borrowed Books">
                <h2>Borrowed Books</h2>
                <p>See the list of books you have borrowed.</p>
            </a>
            <a href="#" class="option-card">
                <img src="../image/admin_dashboard.jpg" alt="Settings">
                <h2>Settings</h2>
                <p>Customize your account settings.</p>
            </a>
        </div>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
