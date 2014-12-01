package com.icofsoftware.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.icofsoftware.beans.UserBean;
import com.icofsoftware.service.MsgService;

public class SendMsg extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    Error !");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf8");

		String content = "";
		String ftype = "0";
		String filename = null;

		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {
			FileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			Iterator<FileItem> items = null;
			try {
				items = upload.parseRequest(request).iterator();
				while (items.hasNext()) {
					FileItem item = items.next();
					if (!item.isFormField()) {
						if (item.getSize() > 1024 * 1024 * 1000) {
							continue;
						}
						filename = item.getName();
						int index = filename.lastIndexOf(".");
						filename = filename.substring(index,
								filename.length());
						filename = System.currentTimeMillis() + filename;
						String path = getServletContext()
								.getRealPath("/upload")
								+ File.separator
								+ filename;

						File uploadedFile = new File(path);
						if (uploadedFile.exists()) {
							uploadedFile.createNewFile();
						}
						item.write(uploadedFile);

					} else {

						if (item.getFieldName().equals("ftype")) {
							ftype = item.getString("utf8");
						} else if (item.getFieldName().equals("msgcontent")) {
							content = item.getString("utf8");
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		MsgService.insertMsg(content, ftype, filename, ((UserBean) request
				.getSession(true).getAttribute("user")).getId());
		response.setContentType("text/html");
		response.sendRedirect("index.jsp");
	}

}
