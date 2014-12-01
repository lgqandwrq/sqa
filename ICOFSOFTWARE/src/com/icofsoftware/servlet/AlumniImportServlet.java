package com.icofsoftware.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icofsoftware.beans.UserBean;
import com.icofsoftware.service.AdminService;

/**
 * Servlet implementation class AlumniImportServlet
 */
public class AlumniImportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AlumniImportServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String importContent = request.getParameter("alumnicontent");
		HttpSession session = request.getSession(true);
		UserBean ub;
		List<UserBean> importuser = new ArrayList<UserBean>();
		try {
			String[] tempeach;
			String[] tempalumni = importContent.split("\n");
			for (int i = 0; i < tempalumni.length; i++) {
				ub = new UserBean();
				tempeach = tempalumni[i].split(",");
				ub.setUsername(tempeach[0].trim());
				ub.setRealname(tempeach[1].trim());
				ub.setEnrollyear(tempeach[2].trim());
				ub.setClasstype(tempeach[3].trim());

				importuser.add(ub);
			}
			AdminService as = new AdminService();
			if (as.ImportAlumni(importuser)) {
				request.getRequestDispatcher(
						"/NewsHome/AdminAlumniImport.jsp?regpage_type=1")
						.forward(request, response);
			} else {
				request.getRequestDispatcher(
						"/NewsHome/AdminAlumniImport.jsp?regpage_type=2")
						.forward(request, response);
			}

		} catch (Exception e) {
			request.getRequestDispatcher(
					"/NewsHome/AdminAlumniImport.jsp?regpage_type=2")
					.forward(request, response);
		}
	}
}
