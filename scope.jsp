<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope.jsp</title>
</head>
<body>
	<%
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>
	<%=pageContext.getAttribute("name")%><br>
	<%=request.getAttribute("name")%><br>
	<%=session.getAttribute("name")%><br>
	<%=application.getAttribute("name")%><br>
	<hr>
	${name}<br>
	${pageScope.name }<br>
	${requestScope.name }<br>
	${sessionScope.name }<br>
	${applicationScope.name }<br>
	<a href="re_scope.jsp">이동</a>
</body>
</html>