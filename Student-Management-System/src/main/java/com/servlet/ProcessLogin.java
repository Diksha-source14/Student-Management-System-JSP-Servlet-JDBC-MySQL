package com.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.service.StudentService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/process-login")
public class ProcessLogin extends HttpServlet{

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		
		String email = arg0.getParameter("email");
		String password = arg0.getParameter("password");
		
		StudentService service = new StudentService();
		
		ResultSet rs = service.login(email, password);
		
		try {
			if(rs.next()) {
				String name = rs.getString("name");
				arg0.setAttribute("name", name);
				
				String email1 = rs.getString("email");
				arg0.setAttribute("email", email1);
				
				String course = rs.getString("course");
				arg0.setAttribute("course", course);
				
				arg0.getRequestDispatcher("profile.jsp").forward(arg0, arg1);
			}
			else {
				arg0.setAttribute("msg", "Invalid Email or Password");
				arg0.getRequestDispatcher("login-form.jsp").forward(arg0, arg1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
