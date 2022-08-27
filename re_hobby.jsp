<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>re_hobby.jsp
	<%
		String[] h = request.getParameterValues("hobby");
		String[] a = request.getParameterValues("addr");
		for(String hh : h){
			out.print(hh+"<br>");
		}
		for(String aa : a){
			out.print(aa+"<br>");
		}
	%>
	<hr>
	<c:forEach var="h" items="${paramValues.hobby }">
		<b>${h }</b><br>
	</c:forEach>
	
	<c:set var="a" value="${paramValues.addr }" />
	
	<c:forEach var="addr" items="${a }">
		<b>${addr }</b><br>
	</c:forEach>
</body>
</html>