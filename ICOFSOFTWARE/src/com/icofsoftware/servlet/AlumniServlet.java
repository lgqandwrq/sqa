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
import com.icofsoftware.service.AlumniService;

public class AlumniServlet extends HttpServlet {

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
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
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
		String country = null;
		String city = null;
		String sname = null;
		String cname = null;
		String des = null;
		String sorc = null;

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
						filename = filename.substring(index, filename.length());
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
						if (item.getFieldName().equals("country")) {
							country = item.getString("utf8");
						} else if (item.getFieldName().equals("city")) {
							city = item.getString("utf8");
						} else if (item.getFieldName().equals("sname")) {
							sname = item.getString("utf8");
						} else if (item.getFieldName().equals("cname")) {
							cname = item.getString("utf8");
						} else if (item.getFieldName().equals("des")) {
							des = item.getString("utf8");
						} else if (item.getFieldName().equals("sorc")) {
							sorc = item.getString("utf8");
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		try {
			String[] temps = country.split("/");
			country = temps[0];
			city = temps[1];
			country = country.trim();
			city = city.trim();
		} catch (Exception e) {
			response.sendRedirect("/ICOFSOFTWARE/Profiles/Edit.jsp?type=1");
			return;
		}
		AlumniService.updateAlumni(((UserBean) request.getSession(true)
				.getAttribute("user")).getId(), country, city, sname, cname,
				sorc, des, filename);
		AlumniService.buildAlunmiList();
		response.sendRedirect("/ICOFSOFTWARE/Profiles/Edit.jsp?type=2");
	}

}
