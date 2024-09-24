package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UsersDao;
import com.entity.Branch;
import com.entity.Users;
@WebServlet("/findall")
public class Findallbranches  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Users admin =  (Users) req.getSession().getAttribute("admin");
		
		if(admin != null) {
			int adid = admin.getId();
			UsersDao dao1 = new UsersDao();
			Users adminuser = dao1.findadminById(adid);
			List<Branch> listofbranches = adminuser.getBranches();
			
			req.getSession().setAttribute("list", listofbranches);
			req.getRequestDispatcher("admindashboard.jsp").include(req, resp);
		}else {
			resp.getWriter().print("<h1>Login First !!!</h1>");
			req.getRequestDispatcher("login.jsp").include(req, resp);
		}
		
	}
}
