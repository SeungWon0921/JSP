<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>subParam</title>
</head>
	<%! String id, pw; %>
	<%
		id = request.getParameter("id");
		id = URLDecoder.decode(id, "utf-8");
		pw = request.getParameter("pw");
	%>
<body>
	<div style="color:blue; background:cyan;">
	현재 페이지는 subParam 입니다.<br>
	아이디: <%= id %><br>
	비밀번호: <%= pw %><br>
	</div>
</body>
</html>