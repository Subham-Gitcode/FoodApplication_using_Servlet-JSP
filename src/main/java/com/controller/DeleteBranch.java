package com.controller;

import java.io.IOException;
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
@WebServlet("/deletebranch")
public class DeleteBranch extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs = req.getSession();
		Users admin = (Users) hs.getAttribute("admin");
		
		if(admin != null) {
			String branchId = req.getParameter("branchId");

		    // Delete branch using the branch ID
		    BranchDao branchDao = new BranchDao();
		    Branch branch = branchDao.getBranchById(Integer.parseInt(branchId));
		    
		    
		    // dereference object
		    
		    branch.setUser(null);
		    branchDao.deleteBranch(branch);

		    // Redirect to the branch list page after successful deletion
		    resp.getWriter().print("<h1>Branch Deleted..</h1>");
		    
			int adminId = admin.getId();
			UsersDao usdao = new UsersDao();
			Users adminuser = usdao.findadminById(adminId);
			List<Branch> listofbranch = adminuser.getBranches();
			//
//			for(Branch b : listofbranch) {
//				System.out.println(b.getBranch_name());
//			}
			req.getSession().setAttribute("list", listofbranch);
		   req.getRequestDispatcher("admindashboard.jsp").include(req, resp);
		}else {
			resp.getWriter().print("<h1>Login First !!!</h1>");
			req.getRequestDispatcher("login.jsp").include(req, resp);
		}
	}

}
