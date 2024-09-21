package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BranchDao;
@WebServlet("/deletebranch")
public class DeleteBranch extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String branchId = req.getParameter("branchId");

	    // Delete branch using the branch ID
	    BranchDao branchDao = new BranchDao();
	    branchDao.deleteBranch(Integer.parseInt(branchId));

	    // Redirect to the branch list page after successful deletion
	    resp.getWriter().print("<h1>Branch Deleted..</h1>");
	   req.getRequestDispatcher("admindashboard.jsp").include(req, resp);
	}

}
