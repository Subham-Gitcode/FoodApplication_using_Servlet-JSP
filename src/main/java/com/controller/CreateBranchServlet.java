package com.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.BranchDao;
import com.dao.UsersDao;
import com.entity.Branch;
import com.entity.Users;

//http://localhost:8080/FoodApp/createbranch?branchname=Kolkata+Branch&address=Kolkata&email=Kolbranch%40gmail.com&password%22=kolbranch&phone-no=1234567890&bmn=skr

@WebServlet("/createbranch")
public class CreateBranchServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String branchName = req.getParameter("branchname");
		String address = req.getParameter("address");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		long mob = Long.parseLong(req.getParameter("phone-no"));
		String branch_manager = req.getParameter("bmn");
		
		System.out.println(branchName);
		
		Branch branch = new Branch();
		branch.setBranch_name(branchName);
		branch.setAddress(address);
		branch.setEmail(email);
		branch.setPassword(password);
		branch.setPhoneno(mob);
		branch.setBranchM_name(branch_manager);
		
		
		HttpSession hs = req.getSession();
		Users admin = (Users)hs.getAttribute("admin");//get admin
		
		if(admin != null) {
			branch.setUser(admin);
			BranchDao dao = new BranchDao();
			Branch b1 = dao.createBranch(branch);
			if(b1 != null) {
				resp.getWriter().print("<h1>branch Created Sucessfully</h1>");
				int adminId = admin.getId();
				UsersDao usdao = new UsersDao();
				Users adminuser = usdao.findadminById(adminId);
				List<Branch> listofbranch = adminuser.getBranches();
				//
				for(Branch b : listofbranch) {
					System.out.println(b.getBranch_name());
				}
				req.getSession().setAttribute("list", listofbranch);
				req.getRequestDispatcher("admindashboard.jsp").include(req, resp);   
			}
		}
			
	}

}
