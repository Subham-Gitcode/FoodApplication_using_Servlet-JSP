package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BranchDao;
import com.entity.Branch;
@WebServlet("/updateBranch")
public class UpdateBranch  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//http://localhost:8080/FoodApp/updateBranch?branchId=2&branchName=Medinipur&address=Medinipur%2C+West+Bengal.&phoneno=04082001&email=mdn%40gmail.com&managerName=jun+malia
	
		String branchname  = req.getParameter("branchName");
		String address  = req.getParameter("address");
		long phoneno  = Long.parseLong(req.getParameter("phoneno"));
		String email  = req.getParameter("email");
		String branchmanager  = req.getParameter("managerName");
		
		
		BranchDao bd = new BranchDao();
		
		Branch prebranch = bd.getBranchById(Integer.parseInt(req.getParameter("branchId")));
		prebranch.setBranch_name(branchname);
		prebranch.setAddress(address);
		prebranch.setPhoneno(phoneno);
		prebranch.setEmail(email);
		prebranch.setBranchM_name(branchmanager);
		
		
		bd.updateBranch(prebranch);
		
		resp.getWriter().print("<h1>Branch Updated</h1>");
		req.getRequestDispatcher("admindashboard.jsp").include(req, resp);  
	}

}
