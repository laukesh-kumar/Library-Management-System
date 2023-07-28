package com.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import com.dao.AdminBookDAO;
import com.dto.AdminBookDTO;

public class AdminBooksController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminBooksController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		AdminBookDTO adminBookDTO = new AdminBookDTO(request);
		boolean resultAddNew=AdminBookDAO.insertBookData(adminBookDTO);
		//delete
		
	    
	            boolean result = AdminBookDAO.deleteBookById(adminBookDTO.getBookId());
	            if (result) {
	                // Book deleted successfully, update bookList and forward back to book.jsp
	            	ArrayList<AdminBookDTO> bookList = (ArrayList<AdminBookDTO>) AdminBookDAO.displayBookData();
	        		request.setAttribute("bookList", bookList);
	        		RequestDispatcher rd1 = request.getRequestDispatcher("book.jsp");
	        		rd1.forward(request, response);
	                return;
	            }
	  
		
		//no any action then it will execute
		ArrayList<AdminBookDTO> bookList = (ArrayList<AdminBookDTO>) AdminBookDAO.displayBookData();
		request.setAttribute("bookList", bookList);
		RequestDispatcher rd1 = request.getRequestDispatcher("book.jsp");
		rd1.forward(request, response);
		if(resultAddNew) {
			request.setAttribute("success", "success");
			RequestDispatcher rd = request.getRequestDispatcher("book.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("test.jsp");
			rd.forward(request, response);
		}
	}

}
