<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cookieName = "id";
	String cookieValue = "" + Math.floor(Math.random() * 10);
	Cookie cookie = new Cookie(cookieName, cookieValue);
	cookie.setMaxAge(30); //쿠키 파기(expiry) 시간 설정(30초)
	response.addCookie(cookie); // response 에 쿠키를 담아 보낸
%>

<script>
	alert("<%= cookieName %> 쿠키 생성");
	location.href = "cookielist.jsp";
</script>