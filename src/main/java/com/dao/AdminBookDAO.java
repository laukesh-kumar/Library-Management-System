package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.connection_db.ConnectionProvider1;
import com.dto.AdminBookDTO;

public class AdminBookDAO {
	static Connection con = ConnectionProvider1.createConnection1();
	public static boolean insertBookData(AdminBookDTO adbd) {
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

    public static List<AdminBookDTO> displayBookData() {
        List<AdminBookDTO> bookList = new ArrayList<>();
        try {
            String query = "SELECT * FROM admin_book";
            PreparedStatement pstmt = con.prepareStatement(query);
            ResultSet set = pstmt.executeQuery();
            while (set.next()) {
                AdminBookDTO book = new AdminBookDTO();
                book.setTitle(set.getString(1));
                book.setAuthor(set.getString(2));
                book.setIsbn(set.getString(3));
                book.setGenre(set.getString(4));
                book.setPublicationDate(set.getString(5));
                book.setAvailableCopies(set.getString(6));
                bookList.add(book);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bookList;
    }
	
}
