<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	int i = 0;
%>
<%
	// userid 란 name 의 쿠키가 발급되어 있으면 로그인 상태
	Cookie[] cookies = request.getCookies();
	String cookieName = "userid";
	
	if(cookies != null){
		for(i = 0; i< cookies.length; i++){
			if(cookieName.equals(cookies[i].getName())){
				break;
			}
		}
	}
%>
<% if(cookies == null || i == cookies.length){%>

<h2>로그인 상태가 아닙니다</h2>
<form action="loginOk.jsp">
	id: <input type="text" name="userid"><br>
	pw: <input type="password" name="pw"><br>
	<input type="submit" value="로그인"><br>
</form>
<% } else {%> 
	<h2>로그인 상태입니다 </h2>
		<form action="logout.jsp">
			<input type="submit" value="로그아웃"><br>
		</form>
	<%	} %>
</body>
</html>