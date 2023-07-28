<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Dashbord</title>
<link rel="stylesheet" href="./css/admin_dashboard.css">
</head>
<body>
    <%@ include file="admin_header.jsp" %>
     <div class="dashboard-content">
        <div class="dashboard-card">
            <h1>Welcome Admin!</h1>
            <p>This is your Admin Dashboard.</p>
        </div>

        <div class="dashboard-section">
            <div class="dashboard-section-card">
                <h2>Manage Books</h2>
                <p>Add, Edit, or Delete Books</p>
            </div>
            <div class="dashboard-section-card">
                <h2>Manage Users</h2>
                <p>View and Manage User Accounts</p>
            </div>
            <div class="dashboard-section-card">
                <h2>Borrowed Books</h2>
                <p>View and Manage Borrowed Books</p>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>