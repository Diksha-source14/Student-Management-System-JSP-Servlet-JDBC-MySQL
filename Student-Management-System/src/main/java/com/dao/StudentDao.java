package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.Student;
import com.utility.JdbcConnection;

public class StudentDao {

	Connection con = JdbcConnection.getConnection();
	
	public String saveStudent(Student s) {
		try {
			PreparedStatement pst = con.prepareStatement("insert into student(name,email,password,course) values(?,?,?,?) ");
			pst.setString(1, s.getName());
			pst.setString(2, s.getEmail());
			pst.setString(3, s.getPassword());
			pst.setString(4, s.getCourse());
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "Registration successfully";
	}
	
	public ResultSet login(String email, String password) {
		
		ResultSet rs = null;
		try {
			PreparedStatement pst = con.prepareStatement("select * from student where email = ? and password =?");
			pst.setString(1, email);
			pst.setString(2, password);
			
			rs = pst.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return rs;
		
	}
}
