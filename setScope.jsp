<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	setScope.jsp<hr>
	<%
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>
	page : <%=pageContext.getAttribute("name") %><br>
	request : <%=request.getAttribute("name") %><br>
	session : <%=session.getAttribute("name") %><br>
	application : <%=application.getAttribute("name") %><br>
	
	<a href="getScope.jsp">getScope이동</a>
	
	<%
		request.getRequestDispatcher("getScope.jsp").forward(request, response);
	%>
	
</body>
</html>