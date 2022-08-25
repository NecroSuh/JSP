<%@page import="java.util.List"%>
<%@page import="day10.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="../default/header.jsp" />

<jsp:useBean id="dao" class="day10.MemberDAO" />
<%
	List<MemberDTO> list = dao.getMembers();
%>
<div style="width:500px; margin: auto;">
	<h3 align="center">회 원 목 록</h3>
	<table border="1" width="500px">
		<tr>
			<th>이름</th> <th>주소</th> <th>전화번호</th>
		</tr>
		<% for(MemberDTO d : list){ %>
		<tr>
			<td>
				<a href="info.jsp?id=<%=d.getId()%>"> <%=d.getName() %> </a>
			</td>
			<td><%=d.getAddr() %></td>
			<td><%=d.getTel() %></td>
		</tr>
		<%} %>
	</table>
</div>
	
<jsp:include page="../default/footer.jsp" />


</body>
</html>