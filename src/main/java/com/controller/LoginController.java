package com.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.dao.LoginDAO;
import com.dto.LoginDTO;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		LoginDTO loginDTO = new LoginDTO(request);
		boolean resultUser = LoginDAO.validateUser(loginDTO);
		if(resultUser) {
			request.setAttribute("loginDTO", loginDTO);
			RequestDispatcher rd = request.getRequestDispatcher("user_dashboard.jsp");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("errorMessage", "Invalid UserName and Password");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}		
	}
}
