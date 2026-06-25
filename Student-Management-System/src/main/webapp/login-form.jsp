<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body{
    background:linear-gradient(135deg,#4facfe,#00f2fe);
    min-height:100vh;
}

/* Navbar */
.navbar{
    background:#1f2937;
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
    transition:0.3s;
}

.nav-links a:hover{
    color:#00f2fe;
}

/* Login Container */
.container{
    display:flex;
    justify-content:center;
    align-items:center;
    min-height:85vh;
}

.card{
    width:420px;
    background:white;
    padding:35px;
    border-radius:15px;
    box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

.card h2{
    text-align:center;
    color:#1f2937;
    margin-bottom:25px;
}

/* Error Message */
.error{
    background:#ffe5e5;
    color:red;
    padding:10px;
    border-radius:8px;
    margin-bottom:15px;
    text-align:center;
}

.form-group{
    margin-bottom:18px;
}

label{
    display:block;
    margin-bottom:6px;
    font-weight:600;
    color:#374151;
}

input{
    width:100%;
    padding:12px;
    border:1px solid #d1d5db;
    border-radius:8px;
    font-size:15px;
}

input:focus{
    outline:none;
    border-color:#2563eb;
}

.btn{
    width:100%;
    padding:12px;
    background:#2563eb;
    color:white;
    border:none;
    border-radius:8px;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

.btn:hover{
    background:#1d4ed8;
}

.register-link{
    text-align:center;
    margin-top:18px;
}

.register-link a{
    text-decoration:none;
    color:#2563eb;
    font-weight:bold;
}

/* Footer */
.footer{
    text-align:center;
    color:white;
    padding:15px;
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

<!-- Login Form -->
<div class="container">

    <div class="card">

        <h2>Student Login</h2>

        <%
        String msg = (String) request.getAttribute("msg");
        if(msg != null){
        %>

        <div class="error">
            <%= msg %>
        </div>

        <%
        }
        %>

        <form action="process-login" method="post">

			<p style="color: red">${msg}</p>
            <div class="form-group">
                <label>Email Address</label>
                <input type="email"
                       name="email"
                       placeholder="Enter Email Address"
                       required>
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="password"
                       name="password"
                       placeholder="Enter Password"
                       required>
            </div>

            <button type="submit" class="btn">
                Login
            </button>

        </form>

        <div class="register-link">
            New Student?
            <a href="register-form">Register Here</a>
        </div>

    </div>

</div>

<div class="footer">
    © 2026 Student Management System | JSP • Servlet • JDBC • MySQL
</div>

</body>
</html>