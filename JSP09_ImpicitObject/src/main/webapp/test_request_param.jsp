<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = 'java.util.Arrays' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request parameter</title>
</head>
<body>
	<%!
		String data1, data2;
		String name, id, pw, gender,memo,local;
		String [] hobby;
	%>
	<%
		request.setCharacterEncoding("utf-8");
	
		data1 = request.getParameter("data1");
		data2 = request.getParameter("data2");
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		gender = request.getParameter("gender");
		local = request.getParameter("local");
		memo = request.getParameter("memo");
		
		hobby = request.getParameterValues("hobby");
	%>
	
	hidden: <%= data1 %>, <%= data2 %> <br>
	이름: <%= name %> <br>
	아이디: <%=id %> <br>
	비밀번호: <%= pw %> <br>
	성별: <%= gender %> <br>
	취미: <%=Arrays.toString(hobby) %><br>
	지역: <%= local %><br>
	메모: <%= memo %><br>
	
	<button onclick="history.back()">돌아가기</button>
</body>
</html>