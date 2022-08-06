<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="qpost.jsp" method="post">
	<input type="text" name="id"><br>
	남<input type="radio" value="남자" name="gender">
	여<input type="radio" value="여자" name="gender"><br>
	<input type="submit" value="쿼리 전송">
	</form>
</body>
</html>