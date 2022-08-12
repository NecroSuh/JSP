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
	quiz06.jsp
	<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String id = "jsp", pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";

	Connection con = DriverManager.getConnection(url, id, pwd);
	String sql = "select * from student";
	PreparedStatement ps = con.prepareStatement(sql);

	ResultSet rs = ps.executeQuery();
	out.print("<table border='1' >");
	out.print("<tr><th>id</th><th>name</th><th>kor</th><th>eng</th><th>math</th></tr>");
	while (rs.next()) {
		out.print("<tr>");
		out.print("<td>" + rs.getString("id") + "</td>");
		out.print("<td>" + rs.getString("name") + "</td>");
		out.print("<td>" + rs.getString("kor") + "</td>");
		out.print("<td>" + rs.getString("eng") + "</td>");
		out.print("<td>" + rs.getString("math") + "</td>");
		out.print("</tr>");
		}
	out.print("</table>");
	%>
</body>
</html>