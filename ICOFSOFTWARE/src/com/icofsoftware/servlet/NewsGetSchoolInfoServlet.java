package com.icofsoftware.servlet;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.icofsoftware.beans.NewsBean;
import com.icofsoftware.service.NewsService;

/**
 * Servlet implementation class NewsGetSchoolInfoServlet
 */
public class NewsGetSchoolInfoServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsGetSchoolInfoServlet() {
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
		NewsBean nb_schoolinfo = new NewsBean();
		NewsService ns = new NewsService();
		nb_schoolinfo = ns.getIntroductionNews();
		HttpSession session = request.getSession(true);
		session.setAttribute("NewsSchoolInfo", nb_schoolinfo);
		System.out.println("~~~NewsGetSchoolInfoServlet");
		request.getRequestDispatcher("/NewsHome/NewsIntroduction.jsp").forward(request,
				response);
	}

}
