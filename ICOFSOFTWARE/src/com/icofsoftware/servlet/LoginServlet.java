package com.icofsoftware.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icofsoftware.beans.UserBean;
import com.icofsoftware.service.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public LoginServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("utf-8");
		String submit = request.getParameter("submit");

		if (submit != null && submit.equals("login")) {
			String uemail = request.getParameter("useremail");
			String upwd = request.getParameter("userpwd");
			UserBean user = new UserBean();
			user.setUseremail(uemail);
			user.setUserpwd(upwd);
			System.out.println("Servlet"+uemail);
			System.out.println("Servlet"+upwd);
			if (LoginService.CheckLogin(user)) {
				HttpSession session = request.getSession(true);
				session.setAttribute("user", user);
				request.getRequestDispatcher("/NewsHome/NewsHome.html").forward(request,
						response);
			} else {
				HttpSession session = request.getSession(true);
				session.setAttribute("user", user);
				request.getRequestDispatcher("/NewsHome/ErrorPage.html").forward(request,
						response);
			}
		}
//		
//		if (submit != null && submit.equals("注册")) {
//			String uname = request.getParameter("uname");
//			String upass = request.getParameter("upass");
//			User user = new User();
//			user.setUname(uname);
//			user.setUpass(upass);
//			if (Land.login(user)) {
//				HttpSession session = request.getSession(true);
//				session.setAttribute("user", user);
//				request.getRequestDispatcher("index1.jsp").forward(request,
//						response);
//			} else if (login.login(user)) {
//				HttpSession session = request.getSession(true);
//				session.setAttribute("user", user);
//				request.getRequestDispatcher("index2.jsp").forward(request,
//						response);
//			}
//		}
	}

}
