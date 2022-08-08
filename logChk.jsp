<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	로그인 체크<br>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		String DB_id = "1", DB_pwd = "1";
		if(id.equals(DB_id) && pwd.equals(DB_pwd)){
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("login.jsp");
		}
	%>
	입력 id : <%=id %><br>
	입력 pwd : <%=pwd %><br>
</body>
</html>