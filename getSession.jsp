<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>get Session</h3>
	id : <%=session.getAttribute("id") %><br>
	nick : <%=session.getAttribute("nickName") %><br>

	<a href="setSession.jsp">setSession</a>
	<a href="delSession.jsp">delSession</a>
</body>
</html>