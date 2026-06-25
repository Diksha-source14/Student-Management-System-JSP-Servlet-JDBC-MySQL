package com.utility;

import java.sql.Connection;
import java.sql.DriverManager;

public class JdbcConnection {

	private static final String url = "jdbc:mysql://localhost:3306/studentdb";
	
	private static final String username = "root";
	
	private static final String password = "Avinash@1425";
	
	public static Connection getConnection() {
		
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}
	
}
