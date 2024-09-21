package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UsersDao;
import com.entity.Users;

@WebServlet("/login")
public class Login extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		System.out.println(email+" "+password);
		
		// Find By Email:- Check Whether The Email Is Present In The Database Or Not
		
		UsersDao dao = new UsersDao();
		Users user = dao.findByEmail(email);  // User Object Or Null
		
		System.out.println(user);
		
		if(user != null) {
			if(user.getPassword().equals(password)) {
				resp.getWriter().print("<h1>" + user.getRole() + " Login Successfull </h1>");
				
				
				
				//create Httpsession Object
				
				HttpSession hs = req.getSession();//http session
				hs.setAttribute(user.getRole()+"", user);//admin branchmanager staff
				req.getRequestDispatcher(user.getRole() + ".jsp").include(req, resp);
			}
			else {
				resp.getWriter().print("<h1> Incorrect Password </h1>");
				req.getRequestDispatcher("login.jsp").include(req, resp);
			}
		}
		else {
			
			// Navigate To userSignup Page
			resp.getWriter().print("<h1> Account Not Found </h1>");
			req.getRequestDispatcher("signup.jsp").include(req, resp);
		}
	}
	
	
}
