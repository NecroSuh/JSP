<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	It's rainy day~~
	<%
		boolean bool = true;
		Cookie[] cook = request.getCookies();
		if(cook != null){
		for(Cookie c : cook){
			if(c.getName().equals("testCookie")){
				bool = false;
			}
		}
	}
	%>
	<%if(bool){ %>
	<script type="text/javascript">
		window.open("popup02.jsp", "", "width = 300, height = 200")
	</script>
	<%} %>
</body>
</html>