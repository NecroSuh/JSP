<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>login.jsp<br>
	<form action="loginChk.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="submit" name="로그인"><br>		
	</form>
	<hr>
	<h3>set_get 이동</h3>
	<form action="set_get.jsp" method="post">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="text" name="name"><br>
		<input type="text" name="addr"><br>		
		<input type="submit" name="로그인"><br>		
	</form>
</body>
</html>