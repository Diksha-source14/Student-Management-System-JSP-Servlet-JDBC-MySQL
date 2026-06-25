package com.servlet;

import java.io.IOException;

import com.entity.Student;
import com.service.StudentService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/process-registration")
public class ProcessRegistration extends HttpServlet {

	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {

		int id = 0;
		String name = arg0.getParameter("name");
		String email = arg0.getParameter("email");
		String password = arg0.getParameter("password");
		String course = arg0.getParameter("course");

		Student s = new Student(id, name, email, password, course);
		
		StudentService service = new StudentService();
		
		String msg = service.saveStudent(s);
		
		arg0.getRequestDispatcher("login-form.jsp").forward(arg0, arg1);
	}
}
