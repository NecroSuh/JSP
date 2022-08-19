<%@page import="java.sql.*"%>
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
	String uId = request.getParameter("id"); 
	String uPwd = request.getParameter("pwd"); 
	String uName = request.getParameter("name"); 
	String uAddr = request.getParameter("addr"); 
	String uTel = request.getParameter("tel"); 
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String id = "jsp", pwd="1234";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection con = DriverManager.getConnection(url,id,pwd);
	
	String sql = "update members set pwd=?, name=?, addr=?, tel=? where id=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, uPwd);
	ps.setString(2, uName);
	ps.setString(3, uAddr);
	ps.setString(4, uTel);
	ps.setString(5, uId);
	
	int result = ps.executeUpdate();
	if(result==1){
		session.setAttribute("loginName", uName);
	%>
		<script type="text/javascript">
			alert("수정 성공!!!")
			location.href='main.jsp';
		</script>
	<% }else{%>
		
	<%}
%>
	<%=uId %>, <%=uPwd %>, <%=uName %>, <%=uAddr %>, <%=uTel %>
</body>
</html>