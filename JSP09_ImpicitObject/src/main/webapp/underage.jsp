<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%! int age; %>
    <%
    	String str = request.getParameter("age");
    age = Integer.parseInt(str);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>미성년자 페이지</title>
</head>
<body>
<%= age %>
당신은 미성년자 입니다. 사이트 이용이 불가합니다 <br>
<a href="input_age.html">처음으로</a>
</body>
</html>