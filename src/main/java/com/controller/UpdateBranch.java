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

@WebServlet("/updateBranch")
public class UpdateBranch extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// http://localhost:8080/FoodApp/updateBranch?branchId=2&branchName=Medinipur&address=Medinipur%2C+West+Bengal.&phoneno=04082001&email=mdn%40gmail.com&managerName=jun+malia

		int branchId = Integer.parseInt(req.getParameter("branchId"));
		String branchname = req.getParameter("branchname");
		String address = req.getParameter("address");
		String phone = req.getParameter("phoneno");
		//System.out.println(phone);
		long phoneno  = Long.parseLong(req.getParameter("phone-no"));
		String email = req.getParameter("email");
		String branchmanager = req.getParameter("bmn");
//
		BranchDao bd = new BranchDao();

		Branch newbranch = bd.getBranchById(branchId);
		newbranch.setBranch_name(branchname);
		newbranch.setAddress(address);
		newbranch.setPhoneno(phoneno);
		newbranch.setEmail(email);
		newbranch.setBranchM_name(branchmanager);

		bd.createBranch(newbranch);

		HttpSession hs = req.getSession();
		Users admin = (Users) hs.getAttribute("admin");
		int adminId = admin.getId();
		UsersDao usdao = new UsersDao();
		Users adminuser = usdao.findadminById(adminId);
		List<Branch> listofbranch = adminuser.getBranches();
		//
//		for(Branch b : listofbranch) {
//			System.out.println(b.getBranch_name());
//		}
		req.getSession().setAttribute("list", listofbranch);
		resp.getWriter().print("<h1>update successfull</h1>");
		req.getRequestDispatcher("admindashboard.jsp").include(req, resp);
	}

}
