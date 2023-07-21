package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.connection_db.ConnectionProvider1;
import com.dto.RegisterDTO;

public class RegisterDAO {
	public static boolean insertUser(RegisterDTO rg) {
		boolean flag=false;
		try {
			Connection con1 = ConnectionProvider1.createConnection1();
			String query ="INSERT INTO users(fullname, username, passwords, gender, city, branch) VALUES (?, ?, ?, ?, ?, ?)";
			PreparedStatement pstmt = con1.prepareStatement(query);
			
			if(rg.getPassword().equals(rg.getConfirmPassword())) {
				pstmt.setString(1, rg.getName());
				pstmt.setString(2, rg.getUsername());
				pstmt.setString(3, rg.getPassword());
				pstmt.setString(4, rg.getGender());
				pstmt.setString(5, rg.getCity());
				pstmt.setString(6, rg.getBranch());
				
				pstmt.executeUpdate();
				flag=true;
			}
			else {
				flag=false;
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
}
