<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSP 문서 response</h2>
	<%
		for(int i=0; i < 5; i++){
			out.println("<p>" + i +	"입니다</p>");
		}
	%>
	<hr>
	<ol>
	<%
		for(int i = 0; i < 5; i ++){
			out.println("<li>" + i + "입니다</li>");
		}
	%>
	</ol>
</body>
</html>