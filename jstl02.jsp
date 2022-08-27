<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl02.jsp</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<%-- 
	<c:import url="el01.jsp" />
	<c:redirect url="hobby.jsp" />
	--%>
	<c:set var="login" value="로그인성공" scope="session" />
	<c:set var="login" value="일반변수" />
	<a href="el01.jsp">이동</a>
	<hr>
	<c:remove var="login" scope="session"/>
	${login}<br>
	${sessionScope.login}<br>
	<hr>
	<c:if test=""></c:if>
	<c:choose>
		<c:when test="${false}">if 조건 111</c:when>
		<c:when test="${false}">if 조건 222</c:when>
		<c:otherwise>else 동작</c:otherwise>
	</c:choose>
</body>
</html>