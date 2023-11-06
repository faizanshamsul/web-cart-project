package com.jsp.jcart_web_app.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.jcart_web_app.dto.Admin;
import com.jsp.jcart_web_app.service.AdminService;

@SuppressWarnings(value="serial")
@WebServlet(value="/adminLogin")
public class AdminLoginController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String adminEmail = req.getParameter("adminEmail");
		String adminPassword = req.getParameter("adminPassword");
		
		AdminService service = new AdminService();
		Admin admin = service.adminLoginWithEmailPassService(adminEmail);
		
		if(admin != null) {
			if(admin.getAdminPassword().equals(adminPassword)) {
				req.getRequestDispatcher("admin-home.jsp").forward(req, resp);
			}else {
				req.setAttribute("incorrectAdminPass", "Enter correct Admin password");
				req.getRequestDispatcher("admin-login.jsp").forward(req, resp);
			}
		}else {
			req.setAttribute("incorrectAdminEmail", "Enter correct Admin Email");
			req.getRequestDispatcher("admin-login.jsp").forward(req, resp);
		}
	}
}
