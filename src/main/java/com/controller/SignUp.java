package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UsersDao;
import com.entity.Users;

@WebServlet("/signup")
public class SignUp  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String role = req.getParameter("role");
		
		
		
		Users us1 = new Users();
		us1.setName(name);
		us1.setEmail(email);
		us1.setPassword(password);
		us1.setRole(role);
		
		UsersDao tc= new UsersDao();
		tc.saveUsers(us1);
		
		req.getRequestDispatcher("login.jsp").include(req, resp);
	}
}
