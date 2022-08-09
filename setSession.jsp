<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	setSession<br>
	<%
		session.setAttribute("id", "aaa");
		session.setAttribute("nickName", "홍길동");
	%>
	<h3>세션이 설정 되었습니다.</h3>
	
	<a href="getSession.jsp">getSession</a>
	<a href="delSession.jsp">delSession</a>
	
</body>
</html>