<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Out</title>
</head>
<body>
	<%-- <%
		int i = 0;
		while(true){
			i++;
			// out 내보객체 <--  PrintWriter 객체. HTML 에 출력
			out.println("5 * " + i + " = " + (5 * i) + "<br>");
			if(i >= 9)break;
		}
	%> --%>
	<%!
		int i = 100;
		String str = "test";	
		
		public int hap(int a, int b){
			return a+b;
		}
	%>
	<%
		out.println("i = " + i + "<br>");
		out.println("str = " + str + "<br>");
		out.println("hap = " + hap(2, 10) + "<br>");
	%>
	<hr>
	i = <%= i %> <br>
	str = <%= str %><br>
	hap = <%= hap(2,10) %><br>
</body>
</html>