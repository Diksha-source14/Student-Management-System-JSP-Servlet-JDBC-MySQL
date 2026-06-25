package com.service;

import java.sql.ResultSet;

import com.dao.StudentDao;
import com.entity.Student;

public class StudentService {

	StudentDao dao = new StudentDao();
	
	public String saveStudent(Student s) {
		return dao.saveStudent(s);
	}
	
	public ResultSet login(String email , String password) {
		return dao.login(email, password);
	}
}
