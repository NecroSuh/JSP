<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	chk.jsp<br>
	<%
	request.setCharacterEncoding("utf-8");
		String DB_id = "1", DB_pwd = "1", nick = "홍길동";
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		if(DB_id.equals(id) && DB_id.equals(pwd)){
			session.setAttribute("success", nick);
			response.sendRedirect("main03.jsp");
		}else{
			response.sendRedirect("login03.jsp");
		}
	%>
</body>
</html>