<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	비가 엄청 옵니다.
	<%
		boolean bool = true;
		Cookie[] cook = request.getCookies();
		for(Cookie c : cook){
			out.print("name : "+c.getName() + "<br>");
			out.print("value : "+c.getValue() + "<hr>");
			if(c.getName().equals("testCookie")){
				bool = false;
			}
		}
	
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge(5);
		response.addCookie(cookie);
	%>
	
	<%if(bool){ %>
	<script type="text/javascript">
		window.open("popup.jsp", "", "width = 300, height = 200")
	</script>
	<%} %>
</body>
</html>