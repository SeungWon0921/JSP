<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import ="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.getAttributeNames();
		Enumeration enumeration = session.getAttributeNames();
		
		int i = 0;
		while(enumeration.hasMoreElements()){
			sessionName = enumeration.nextElement().toString();
			
		}
	%>
</body>
</html>