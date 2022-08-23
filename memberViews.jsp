<%@page import="day10.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberViews</title>
</head>
<body>memberViews.jsp<br>
	<%-- 
	MemberDAO dao = new MemberDAO();
	--%>
	<hr>
	<jsp:useBean id="dao" class="day10.MemberDAO" />
	<%
		ArrayList<MemberDTO> list = dao.getList();
		for(MemberDTO dto : list){%>
		id : <%=dto.getId() %><br>
		pwd : <%=dto.getPwd() %><br>
		name : <%=dto.getName() %><br>
		addr : <%=dto.getAddr() %><br>
		tel : <%=dto.getTel() %><br>
	<%}%>
</body>
</html>