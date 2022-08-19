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
	id : <%= session.getAttribute("loginId") %>
	<% 
	String uId = (String)session.getAttribute("loginId");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String id = "jsp", pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection con = DriverManager.getConnection(url, id, pwd);
	
	String sql = "select * from members where id='"+uId+"'";
	PreparedStatement ps = con.prepareStatement(sql);
	
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
		String addrs = rs.getString("addr");
		String[] arr = addrs.split(",");
	%>
		1 : <%=arr[0] %><br>
		2 : <%=arr[0] %><br>
		3 : <%=arr[0] %><br>
		<h3>회원 정보 수정 및 삭제</h3>
		<form action="modifyInfo.jsp" method="post">
			id<input type="text" name="id" readonly 
				value="<%=rs.getString("id") %>"><br>
			pw<input type="text" name="pwd" value="<%=rs.getString("pwd") %>"><br>
			이름<input type="text" name="name" value="<%=rs.getString("name") %>"><br>
			주소<input type="text" name="addr" value="<%=rs.getString("addr") %>"><br>
			전화번호<input type="text" name="tel" value="<%=rs.getString("tel") %>"><br>
			<input type="submit" value="수정">
			<input type="button" onclick="location.href='delete.jsp?id=<%=uId %>'" value="삭제">
		</form>
	<%}
	%>
</body>	
</html>