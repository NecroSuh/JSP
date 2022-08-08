<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	%>
	이름: <%=request.getParameter("name")%><br>
	성별: <%=request.getParameter("gender")%><br> 
	계절: <%=request.getParameter("season")%><br>
	<%
	String[] str = request.getParameterValues("season");
	for (int i = 0; i < str.length; i++) {
		//out.print("<b><i>+str[i]+"</i></b><br>);
		%>
		<b><i><%=str[i] %></i></b><br>
	<%}%>
	
	<hr>
	
	<%
		String[] s = {"1111", "2222", "3333"};
		for(String ss : s){
			out.print(ss + "<br>");
		}
	%>
	
</body>
</html>