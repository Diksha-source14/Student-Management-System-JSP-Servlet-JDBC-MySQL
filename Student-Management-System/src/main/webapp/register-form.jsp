<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>

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
    padding:15px 50px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.logo{
    color:white;
    font-size:28px;
    font-weight:bold;
}

.nav-links a{
    color:white;
    text-decoration:none;
    margin-left:20px;
    font-size:16px;
}

.nav-links a:hover{
    color:#00f2fe;
}

/* Registration Form */
.container{
    display:flex;
    justify-content:center;
    align-items:center;
    min-height:85vh;
}

.card{
    background:white;
    width:500px;
    padding:35px;
    border-radius:15px;
    box-shadow:0 5px 20px rgba(0,0,0,0.2);
}

.card h2{
    text-align:center;
    color:#2c3e50;
    margin-bottom:25px;
}

.form-group{
    margin-bottom:15px;
}

label{
    display:block;
    margin-bottom:6px;
    font-weight:bold;
    color:#444;
}

input, select{
    width:100%;
    padding:12px;
    border:1px solid #ccc;
    border-radius:8px;
    font-size:15px;
}

input:focus, select:focus{
    outline:none;
    border-color:#007bff;
}

.btn{
    width:100%;
    padding:12px;
    background:#28a745;
    color:white;
    border:none;
    border-radius:8px;
    font-size:16px;
    font-weight:bold;
    cursor:pointer;
    margin-top:10px;
}

.btn:hover{
    background:#218838;
}

.login-link{
    text-align:center;
    margin-top:15px;
}

.login-link a{
    text-decoration:none;
    color:#007bff;
    font-weight:bold;
}

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

<!-- Registration Form -->
<div class="container">

    <div class="card">

        <h2>Student Registration</h2>

        <form action="process-registration" method="post">

            <div class="form-group">
                <label>Full Name</label>
                <input type="text"
                       name="name"
                       placeholder="Enter Full Name"
                       required>
            </div>

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
                       placeholder="Create Password"
                       required>
            </div>

            <div class="form-group">
                <label>Course</label>
                <select name="course" required>
                    <option value="">Select Course</option>
                    <option>B.Tech CSE</option>
                    <option>BCA</option>
                    <option>MCA</option>
                    <option>B.Sc Computer Science</option>
                    <option>M.Tech</option>
                </select>
            </div>

            <button type="submit" class="btn">
                Register Student
            </button>

        </form>

        <div class="login-link">
            Already have an account?
            <a href="login-form">Login Here</a>
        </div>

    </div>

</div>

<div class="footer">
    © 2026 Student Management System
</div>

</body>
</html>