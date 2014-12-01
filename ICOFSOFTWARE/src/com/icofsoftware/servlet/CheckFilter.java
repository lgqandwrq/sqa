package com.icofsoftware.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icofsoftware.beans.UserBean;

public class CheckFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest servletRequest,
			ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		
		HttpSession session = request.getSession();
		UserBean sessionKey = (UserBean) session.getAttribute("user");
		if ((!checkRequestURIIntNotFilterList(request)) && sessionKey == null) {
			response.sendRedirect("/ICOFSOFTWARE/NewsHome/index_signup.jsp");
			return;
		}
		filterChain.doFilter(servletRequest, servletResponse);
	}

	private boolean checkRequestURIIntNotFilterList(HttpServletRequest request) {
		String uri = request.getRequestURI();
		if (!uri.endsWith("jsp")) {
			return true;
		}
		if (uri.contains("signup") ||uri.contains("signin") ) {
			return true;
		}
		if (uri.startsWith("/News") || uri.equals("/"))
			return true;
		return false;
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
