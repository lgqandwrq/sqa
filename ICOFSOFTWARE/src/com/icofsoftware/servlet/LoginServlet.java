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
import com.icofsoftware.service.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("utf-8");
		String submit = request.getParameter("submit");
		String type = request.getParameter("type");

		if (type != null && type.equals("logout")) {
			HttpSession session = request.getSession(true);
			session.removeAttribute("user");
			response.sendRedirect("/ICOFSOFTWARE/");
			return;
		}

		if (submit != null && submit.equals("login")) {
			String uemail = request.getParameter("useremail");
			String upwd = request.getParameter("userpwd");
			UserBean user = new UserBean();
			user.setUseremail(uemail);
			user.setUserpwd(upwd);
			if (LoginService.CheckLogin(user)) {
				HttpSession session = request.getSession(true);
				session.setAttribute("user", user);
				if (user.getType() == UserBean.ADMIN)
					// request.getRequestDispatcher("/NewsHome/AdminNewsPost.jsp")
					// .forward(request, response);
					request.getRequestDispatcher("NewsHome/AdminNewsPost.jsp")
							.forward(request, response);
				else
					response.sendRedirect("/ICOFSOFTWARE/NewsGetNewsHomeServlet");
			} else {
				response.sendRedirect("/ICOFSOFTWARE/NewsHome/index_signup.jsp?regpage_type=2");
			}
		}else if(submit != null && submit.equals("signup")) {
			String uname = request.getParameter("reg_username"); //Student Number
			String urealname = request.getParameter("reg_realname");
			String uemail = request.getParameter("reg_email");
			String upwd = request.getParameter("reg_pwd");
			
			UserBean user = new UserBean();
			user.setUsername(uname);
			user.setRealname(urealname);
			user.setUseremail(uemail);
			user.setUserpwd(upwd);
			
			if(LoginService.Register(user)){
				HttpSession session = request.getSession(true);
				session.setAttribute("user", user);
				System.out.println("Success");
				response.sendRedirect("/ICOFSOFTWARE/Profiles/Edit.jsp");
			}else{
				response.sendRedirect("/ICOFSOFTWARE/NewsHome/index_signup.jsp?regpage_type=2");
			}
			
		}
		
	}
}
