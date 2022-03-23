package com.lec.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ContextPath
 */
@WebServlet("/ConPath")
public class ContextPath extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContextPath() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// URL : Uniform Resource Locator
		StringBuffer url = request.getRequestURL();
		
		// URI : Uniform Resource Identifier
		String uri = request.getRequestURI();
		
		// Context Path
		String conPath = request.getContextPath();
		
		// domain 추출
		String url_domain = request.getScheme() + "://" 
								 + request.getServerName() + ":" + request.getServerPort();
		
		PrintWriter out = response.getWriter();
		
		response.setContentType("text/html; charset=utf-8");
		out.println("<hr>");
		out.println("URL: " + url + "<br>");
		out.println("URL: " + uri + "<br>");
		out.println("URL: " + conPath + "<br>");
		out.println("URL: " + url_domain + "<br>");
		
		out.flush();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
