<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    background:linear-gradient(135deg,#4facfe,#00f2fe);
    min-height:100vh;
}

/* Navbar */
.navbar{
    background:#2c3e50;
    color:white;
    padding:15px 50px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.logo{
    font-size:28px;
    font-weight:bold;
}

.nav-links a{
    color:white;
    text-decoration:none;
    margin-left:25px;
    font-size:16px;
}

.nav-links a:hover{
    color:#00f2fe;
}

/* Hero Section */
.hero{
    display:flex;
    justify-content:center;
    align-items:center;
    height:85vh;
}

.card{
    background:white;
    width:600px;
    padding:40px;
    border-radius:15px;
    text-align:center;
    box-shadow:0px 5px 20px rgba(0,0,0,0.2);
}

.card h1{
    color:#2c3e50;
    margin-bottom:15px;
}

.card p{
    color:#555;
    margin-bottom:25px;
    line-height:1.6;
}

.btn{
    display:inline-block;
    text-decoration:none;
    padding:12px 25px;
    margin:10px;
    border-radius:8px;
    color:white;
    font-weight:bold;
    transition:0.3s;
}

.register-btn{
    background:#28a745;
}

.register-btn:hover{
    background:#218838;
}

.login-btn{
    background:#007bff;
}

.login-btn:hover{
    background:#0056b3;
}

/* Features */
.features{
    margin-top:25px;
    text-align:left;
}

.features ul{
    list-style:none;
}

.features li{
    padding:8px;
    color:#444;
}

/* Footer */
.footer{
    text-align:center;
    color:white;
    padding:15px;
    font-size:14px;
}
</style>

</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <div class="logo">Student Management System</div>

    <div class="nav-links">
        <a href="home.jsp">Home</a>
        <a href="register-form">Register</a>
        <a href="login-form">Login</a>
    </div>
</div>

<!-- Hero Section -->
<div class="hero">

    <div class="card">

        <h1>Student Management System</h1>

        <p>
            Welcome to Student Management System.
            Register and login to manage student information
            securely using JSP, Servlet, JDBC and MySQL.
        </p>

        <a href="register-form" class="btn register-btn">
            Student Registration
        </a>

        <a href="login-form" class="btn login-btn">
            Student Login
        </a>

        <div class="features">
            <h3>Features</h3>
            <ul>
                <li>✔ Student Registration</li>
                <li>✔ Student Login</li>
                <li>✔ Student Profile</li>
                <li>✔ Secure Authentication</li>
                <li>✔ MySQL Database Integration</li>
            </ul>
        </div>

    </div>

</div>

<!-- Footer -->
<div class="footer">
    © 2026 Student Management System | JSP • Servlet • JDBC • MySQL
</div>

</body>
</html>