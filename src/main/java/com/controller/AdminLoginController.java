package com.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.dao.LoginDAO;
import com.dto.LoginDTO;

public class AdminLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdminLoginController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		LoginDTO loginDTO = new LoginDTO(request);
		boolean resultAdmin = LoginDAO.validateAdmin(loginDTO);
		 if(resultAdmin) {
			request.setAttribute("loginDTO", loginDTO);
			RequestDispatcher rd = request.getRequestDispatcher("admin_home.jsp");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("errorMessage", "Invalid UserName and Password");
			RequestDispatcher rd = request.getRequestDispatcher("admin_login.jsp");
			rd.forward(request, response);
		}		
	}
}
