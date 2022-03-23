<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie 리스트</title>
</head>
<body>
	<%
		// request 안에 쿠키 정보가 담겨 있다.
		Cookie[] cookies = request.getCookies(); 	//Cookie[] 배열을 리턴
		
		if(cookies != null){	//만약 쿠키가 하나도 없다면 null 이 리턴된다.
			for(int i = 0; i< cookies.length; i++){
				String cookieName = cookies[i].getName(); // 쿠키의 이름
				String cookieValue = cookies[i].getValue(); // 쿠키의 값
				out.println((i + 1)+ "]" + cookieName + " : " + cookieValue + "<br>");
			}
		} else {
			out.println("쿠키가 없습니다<br>");
		}
	%>
<br>	
<button onclick=location.href='cookieCreate.jsp'>
쿠키생성 & 갱신
</button>
<button onclick=location.href='cookieDelete.jsp'>
쿠키제거
</button>
</body>
</html>