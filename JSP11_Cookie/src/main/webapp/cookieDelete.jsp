<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cookieName = "id";
	Cookie cookie = new Cookie(cookieName, "xxxx");
	cookie.setMaxAge(0);
	response.addCookie(cookie);
%>

<script>
	
</script>