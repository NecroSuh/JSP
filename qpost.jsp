<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String gender = request.getParameter("gender");
	%>
	입력하신 수는<b><%=id %></b>이고,<br>
	당신은 <b><%=gender %></b>이군요.
</body>
</html>