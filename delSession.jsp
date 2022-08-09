<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>del session</h3>
	<%
		// session.removeAttribute("id");
		// session.setMaxInactiveInterval(5);
		session.invalidate();
	%>
	<a href="setSession.jsp">setSession</a>
	<a href="getSession.jsp">getSession</a>
</body>
</html>