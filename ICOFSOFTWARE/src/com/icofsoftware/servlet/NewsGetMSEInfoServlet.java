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

import com.icofsoftware.beans.NewsBean;
import com.icofsoftware.service.NewsService;

/**
 * Servlet implementation class NewsGetMSEInfoServlet
 */
public class NewsGetMSEInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsGetMSEInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		List<NewsBean> nb_mseinfolist = new ArrayList<NewsBean>();
		NewsService ns = new NewsService();
		nb_mseinfolist = ns.getMSENews();
		HttpSession session = request.getSession(true);
		session.setAttribute("NewsMSEInfo", nb_mseinfolist);
		System.out.println("~~~NewsGetMSEInfoServlet");
		request.getRequestDispatcher("/NewsHome/NewsMSE.jsp").forward(request,
				response);
	}

}
