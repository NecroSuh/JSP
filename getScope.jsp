<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>getScope.jsp</h3>

	page : <%=pageContext.getAttribute("name") %><br>
	request : <%=request.getAttribute("name") %><br>
	session : <%=session.getAttribute("name") %><br>
	application : <%=application.getAttribute("name") %><br>
	
	<a href="getScope02.jsp">getScope02이동</a>
</body>
</html>