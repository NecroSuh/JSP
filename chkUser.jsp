<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkUser.jsp<br>
	<%=request.getParameter("id") %>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		// response.sendRedirect("userPage.jsp");
		String user = request.getParameter("user");
		if(user.equals("admin")){%>
			<jsp:forward page="adminPage.jsp">
				<jsp:param value="홍길동" name="nick"/>
			</jsp:forward>
		<%}else{%>
			<jsp:forward page="userPage.jsp"></jsp:forward>
		<%}
	%>

</body>
</html>