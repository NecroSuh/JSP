<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		if(session.getAttribute("success") == null){
	%>
		<script type="text/javascript">
			alert("로그인 먼저 하세요!!")
			locaton.href="login03.jsp";
		</script>
	<% 	//response.sendRedirect("login03.jsp");
		}
	%>
	로그인 성공한 사용자만 접근 가능합니다.<br>
	<%=session.getAttribute("success") %>님 환영
</body>
</html>