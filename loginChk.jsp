<%@page import="day10.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginChk</title>
</head>
<body>
	loginChk.jsp
	<br>
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	MemberDTO dto = new MemberDTO();
	dto.setId(id);
	dto.setPwd(pwd);
	%>
	id :
	<%=dto.getId()%><br> pwd :
	<%=dto.getPwd()%><br> id :
	<%=id%><br> pwd :
	<%=pwd%><br>
	
	MemberDTO dto2 = new MemberDTO();
	<jsp:useBean id="dto2" class="day10.MemberDTO" />
	<%
		dto2.setName("홍길동");
		dto2.setAddr("산골짜기");
	%>
	<hr>
	<%=dto2.getName() %><br>
	<%=dto2.getAddr() %>
	
</body>
</html>