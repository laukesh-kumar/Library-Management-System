package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.connection_db.ConnectionProvider1;
import com.dto.AdminBookDTO;

public class AdminBookDAO {
	static Connection con = ConnectionProvider1.createConnection1();
	public static boolean insertFormData(AdminBookDTO adbd) {
		boolean flag = false;
		try {
			String query = "INSERT INTO admin_book(title,author,isbn,genre, publication_date, available_copies) values(?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, adbd.getTitle());
			pstmt.setString(2, adbd.getAuthor());
			pstmt.setString(3, adbd.getIsbn());
			pstmt.setString(4, adbd.getGenre());
			pstmt.setString(5, adbd.getPublicationDate());
			pstmt.setString(6, adbd.getAvailableCopies());
			pstmt.executeUpdate();
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public static boolean displayFormData() {
		boolean flag = false;
		try {
			String query = "SELECT * FROM admin_book";
			PreparedStatement pstmt = con.prepareStatement(query);
			ResultSet set = pstmt.executeQuery();
			while(set.next()) {
				String title = set.getString(1);
				String author = set.getString(2);
				String isbn = set.getString(3);
				String genre = set.getString(4);
				String publication_date = set.getString(5);
				String available_copies = set.getString(6);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	
}
