<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public static final String ADMIN_ID = "admin";
	public static final String ADMIN_PW = "1234";
%>

<%
	String userid = request.getParameter("userid");
	String pw = request.getParameter("pw");
	
	String cookieName = "userid";
	String cookieValue = userid;
	
	// id / pw 일치하면 로그인 성공 + 쿠키 생성
	if(ADMIN_ID.equalsIgnoreCase(userid) && ADMIN_PW.equals(pw)){
		out.println("<scrpit>");
		out.println("alert('로그인 성공')");
		out.println("</scrpit>");
		
		Cookie cookie = new Cookie(cookieName, cookieValue);
		cookie.setMaxAge(60);
		response.addCookie(cookie);
	} else{
		out.println("<scrpit>");
		out.println("alert('로그인 실패')");
		out.println("</scrpit>");
		
		Cookie cookie = new Cookie(cookieName, cookieValue);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	}
%>

<script>
location.href = "login.jsp";
</script>