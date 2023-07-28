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
                book.setId(set.getInt(1));
                book.setTitle(set.getString(2));
                book.setAuthor(set.getString(3));
                book.setIsbn(set.getString(4));
                book.setGenre(set.getString(5));
                book.setPublicationDate(set.getString(6));
                book.setAvailableCopies(set.getString(7));
                bookList.add(book);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bookList;
    }

    public static boolean deleteBookById(String bookId) {
        boolean flag = false;
        try {
            String query = "DELETE FROM admin_book WHERE id = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, bookId);
            pstmt.executeUpdate();
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }
	
}
