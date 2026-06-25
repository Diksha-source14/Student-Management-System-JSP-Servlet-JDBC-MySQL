<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String name = (String) request.getAttribute("name");
String email = (String) request.getAttribute("email");
String course = (String) request.getAttribute("course");

if (name == null)
	name = "Student";
if (email == null)
	email = "Not Available";
if (course == null)
	course = "Not Available";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Profile</title>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', sans-serif;
}

body {
	background: linear-gradient(135deg, #4facfe, #00f2fe);
	min-height: 100vh;
}

/* Navbar */
.navbar {
	background: #1f2937;
	color: white;
	padding: 15px 50px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.logo {
	font-size: 28px;
	font-weight: bold;
}

.nav-links a {
	color: white;
	text-decoration: none;
	margin-left: 20px;
	transition: 0.3s;
}

.nav-links a:hover {
	color: #00f2fe;
}

.logout-btn {
	background: #ef4444;
	padding: 10px 18px;
	border-radius: 8px;
}

.logout-btn:hover {
	background: #dc2626;
}

/* Profile Section */
.container {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 85vh;
}

.profile-card {
	width: 650px;
	background: white;
	border-radius: 20px;
	padding: 35px;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
}

.profile-header {
	text-align: center;
	margin-bottom: 25px;
}

.profile-icon {
	font-size: 70px;
}

.profile-header h2 {
	color: #1f2937;
	margin-top: 10px;
}

/* Profile Table */
table {
	width: 100%;
	border-collapse: collapse;
}

th {
	background: #2563eb;
	color: white;
	padding: 12px;
	text-align: left;
}

td {
	padding: 12px;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background: #f3f4f6;
}

/* Welcome Box */
.welcome {
	background: #dbeafe;
	color: #1e40af;
	padding: 12px;
	border-radius: 8px;
	margin-bottom: 20px;
	text-align: center;
	font-weight: bold;
}

/* Footer */
.footer {
	text-align: center;
	color: white;
	padding: 15px;
}
</style>

</head>
<body>

	<!-- Navbar -->
	<div class="navbar">
		<div class="logo">Student Management System</div>

		<div class="nav-links">
			<a href="home.jsp">Home</a> <a href="logout" class="logout-btn">Logout</a>
		</div>
	</div>

	<!-- Profile -->
	<div class="container">

		<div class="profile-card">

			<p style="color: green;">${msg}</p>
			<div class="profile-header">
				<div class="profile-icon">🎓</div>
				<h2>Student Profile</h2>
			</div>

			<div class="welcome">
				Welcome,
				<%=name%>
				👋
			</div>

			<table>

				<tr>
					<th>Name</th>
					<td><%=name%></td>
				</tr>

				<tr>
					<th>Email</th>
					<td><%=email%></td>
				</tr>

				<tr>
					<th>Course</th>
					<td><%=course%></td>
				</tr>

				<tr>
					<th>Status</th>
					<td>Active Student</td>
				</tr>

			</table>

		</div>

	</div>

	<div class="footer">© 2026 Student Management System | JSP •
		Servlet • JDBC • MySQL</div>

</body>
</html>