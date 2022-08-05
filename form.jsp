<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		form.jsp
	<h3>get method</h3>
	<form action="getMethod.jsp" method="get">
	<input type="text" name="id"><br>
	<input type="text" name="pwd"><br>
	<input type="submit" value="전송"><br>
	</form>
	
	<h3>post method</h3>
	<form action="postMethod.jsp" method="post">
	<input type="text" name="id"><br>
	<input type="text" name="pwd"><br>
	<input type="submit" value="전송"><br>
	</form>
</body>
</html>