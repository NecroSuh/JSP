<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	login : ${login}<br>
	login : ${sessionScope.login}<br>
<hr>
	${5/2}=>${5 div 2}<br>
	${5%2 } => ${5 mod 2}<br>
	${5==2} => ${5 eq 2}<br>
	ne(!= 같지않다), lt(< 작다), gt(> 크다), le(<= 작거나 같다)
	ge(>= 크거나 같다), or(||연산), and(&&연산), not(!연산)
	
	<hr>
	${"안녕하세요"}<br>
	<%="안녕하세요"%><br>
	<%out.print("안녕하세요");%><hr>

	<%
	String s = "test";
	%>
	<%=s%><br> ${s}
</body>
</html>