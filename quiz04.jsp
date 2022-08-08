<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="qpost02.jsp" method="post">
		<table border="1">
			<tr>
				<th>이름:</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>성별:</th>
				<td>
				 남<input type="radio" name="gender" value="남">
				 여<input type="radio" name="gender" value="여">
				</td>
			</tr>
			<tr>
				<th>좋아하는 계절:</th>
				<td>봄<input type="checkbox" name="season" value="봄"> 
					여름<input type="checkbox" name="season" value="여름"> 
					가을<input type="checkbox" name="season" value="가을">
				 	겨울<input type="checkbox" name="season" value="겨울">
				</td>
			</tr>
			<tr>
				<th><input type="submit" value="전송"></th>
				<td><input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>