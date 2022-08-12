<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	quiz06_2.jsp
	<br>
	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String id = "jsp", pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection con = DriverManager.getConnection(url, id, pwd);
	String sql = "select * from student";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	%>
	<table border="1">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>kor</th>
			<th>eng</th>
			<th>math</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("id")%></td>
			<td>
				<a href="info.jsp?id=<%=rs.getString("id")%>"><%=rs.getString("name")%></a>
			</td>
			<td><%=rs.getString("kor")%></td>
			<td><%=rs.getString("eng")%></td>
			<td><%=rs.getString("math")%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>










