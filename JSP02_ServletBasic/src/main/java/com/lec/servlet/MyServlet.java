package com.lec.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				System.out.println("HelloServlet 요청!");
				// 서블릿으로 HTML 문서 response 맛보기
				// 1. content type 설정 (★주의★ PrintWriter 뽑기 전에 설정해야 합니다)
				// 2. PrintWriter 객체생성 <-- response 객체로부터
				// 3. PrintWriter 객체로 HTML 스트림에 쓰기
				
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<!DOCTYPE html>");
				out.println("<head>");
				out.println("<meta charset='utf-8'>");
				out.println("</head>");
				out.println("<body>");
				out.println("<h2> HTML 문서 response </h2>");
				out.println("</body>");
				out.println("</html>");
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
