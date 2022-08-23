<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set_get</title>
</head>
<body>set_get.jsp<br>
	<jsp:useBean id="dto" class="day10.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/> 
	<jsp:setProperty property="pwd" name="dto"/>
	
	name : <%=dto.getName() %><br>
	addr : <%=dto.getAddr() %><br>
	id : <jsp:getProperty property="id" name="dto"/>
	pwd : <jsp:getProperty property="pwd" name="dto"/>
</body>
</html>