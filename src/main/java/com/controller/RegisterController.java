package com.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.dao.RegisterDAO;
import com.dto.RegisterDTO;
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterController() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	 	//PrintWriter out = response.getWriter();		
		RegisterDTO registerDTO = new RegisterDTO(request);
		boolean userResult= RegisterDAO.insertUser(registerDTO);
		boolean adminResult = RegisterDAO.insertAdmin(registerDTO);
		if(userResult) {
			request.setAttribute("registerDTO", registerDTO);
			RequestDispatcher rd = request.getRequestDispatcher("registration_success.jsp");
			rd.forward(request, response);
		}
		else if(adminResult){
			request.setAttribute("adminRegistration", "registerd");
			RequestDispatcher rd = request.getRequestDispatcher("registration_success.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("Test.jsp");
			rd.forward(request, response);
		}
//		
	}

}
