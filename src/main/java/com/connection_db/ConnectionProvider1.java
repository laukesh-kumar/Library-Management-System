package com.connection_db;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider1 {
	static Connection con;
	public static Connection createConnection1() {
		
		try {
			//load the driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			//create the connection
			String url="jdbc:mysql://localhost:3307/library_db";
			String user = "root";
			String password = "Laukeshk185@";
			
			con = DriverManager.getConnection(url,user,password);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;		
	}
}
