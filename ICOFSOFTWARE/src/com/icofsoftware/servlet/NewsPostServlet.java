package com.icofsoftware.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icofsoftware.beans.NewsBean;
import com.icofsoftware.beans.UserBean;
import com.icofsoftware.service.NewsService;
import com.icofsoftware.utils.StringUtils;

/**
 * Servlet implementation class NewsPostServlet
 */
public class NewsPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		NewsBean nb_newsitem = new NewsBean();
		HttpSession session = request.getSession(true);
		UserBean ub = (UserBean)session.getAttribute("user");
		
		nb_newsitem.setTitle(request.getParameter("newstitle"));
		nb_newsitem.setContent(request.getParameter("newscontent"));
		nb_newsitem.setPosterid(ub.getId());
		nb_newsitem.setPostdate(StringUtils.getCurDate());
		
		NewsService ns = new NewsService();
		if(ns.postNewsItem(nb_newsitem)){
			request.getRequestDispatcher("/NewsHome/AdminNewsPost.jsp?regpage_type=1").forward(request,
					response);
		}else{
			request.getRequestDispatcher("/NewsHome/AdminNewsPost.jsp?regpage_type=2").forward(request,
					response);
		}
	}

}
