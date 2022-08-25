<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="day10.MemberDAO" />
	<jsp:useBean id="dto" class="day10.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	
	<% 
	String[] addr = request.getParameterValues("addr");
	String ad = addr[0]+","+addr[1]+","+addr[2];
	dto.setAddr(ad);
	
	int re =  dao.register(dto);
	if(re == 1)
		response.sendRedirect("login.jsp");
	else
		response.sendRedirect("register_form.jsp");
	%>
	
	<%=dto.getId() %><br>
	<%=dto.getPwd() %><br>
	<%=dto.getName() %><br>
	<%=dto.getAddr() %><br>
	<%=dto.getTel() %><br>
</body>
</html>