package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.connection_db.ConnectionProvider1;
import com.dto.LoginDTO;

public class LoginDAO {
	
	public static boolean validateUser(LoginDTO ld) {
		boolean flag=false;
		try {
			Connection con = ConnectionProvider1.createConnection1();
			String quary = "SELECT username, passwords FROM users WHERE username=? ";
			PreparedStatement pstmt = con.prepareStatement(quary);
			pstmt.setString(1, ld.getUsername());
			ResultSet set=pstmt.executeQuery();
			while(set.next()) {
				String ProvidedUsername = ld.getUsername();
				String ProvidedPassword =ld.getPassword();
				String dbUsername = set.getString("username");
				String dbPassword = set.getString("passwords");
				if(ProvidedUsername.equals(dbUsername) && ProvidedPassword.equals(dbPassword)) {
					flag = true;
				}
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public static boolean validateAdmin(LoginDTO ld) {
		boolean flag=false;
		try {
			Connection con = ConnectionProvider1.createConnection1();
			String quary = "SELECT username, passwords FROM admin WHERE username=? ";
			PreparedStatement pstmt = con.prepareStatement(quary);
			pstmt.setString(1, ld.getUsername());
			ResultSet set=pstmt.executeQuery();
			while(set.next()) {
				String ProvidedUsername = ld.getUsername();
				String ProvidedPassword =ld.getPassword();
				String dbUsername = set.getString("username");
				String dbPassword = set.getString("passwords");
				if(ProvidedUsername.equals(dbUsername) && ProvidedPassword.equals(dbPassword)) {
					flag = true;
				}
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
}
