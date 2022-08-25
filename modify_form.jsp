<%@page import="day10.MemberDTO"%>
<%@page import="day10.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/jsp_project/resources/js/daumPost.js"></script>

</head>
<body>
	<%
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.info(request.getParameter("id"));
		String[] arr = dto.getAddr().split(",");
	%>
	<%@ include file="../default/header.jsp" %>
	<form action="modify.jsp" method="post">
      id<input type="text" name="id" readonly value="<%=dto.getId() %>" ><br>
      pw<input type="text" name="pwd" value="<%=dto.getPwd() %>"><br>
      이름<input type="text" name="name" value="<%=dto.getName() %>"><br>
      주소<input type="text" id="addr1" name="addr" value="<%= arr[0] %>">
      <input type="button" onclick="daumPost()" value="우편번호찾기">
      <br>
      <input type="text" id="addr2" value="<%= arr[1] %>" name="addr">
      <input type="text" id="addr3" value="<%= arr[2] %>" name="addr">
      
      <br>
      전화번호<input type="text" name="tel" value="<%=dto.getTel() %>"><br>
      <input type="submit" value="수정">
   </form>
	<%@ include file="../default/footer.jsp" %>
</body>
</html>