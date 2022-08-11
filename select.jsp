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
	select.jsp
	<br>
	<%
	// 드라이브 로드하는 작업
	// 1. 오라클 관련된 기능으 사용할 수 있게 도와주는 것
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String id = "jsp", pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	// 2. 오라클 연결
	Connection con = DriverManager.getConnection(url, id, pwd);
	// 3. 명령어 전송할 수 있는 객체를 얻어온다.
	String sql = "select * from student";
	PreparedStatement ps = con.prepareStatement(sql);
	// select 무조건 Query를 사용한다.
	// select를 제외한 다른 명령어는 Update를 사용한다.
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		out.print(rs.getString("id")+"<br>");
		out.print(rs.getString("name")+"<br>");
		out.print(rs.getString("kor")+"<br>");
		out.print(rs.getString("eng")+"<br>");
		out.print(rs.getString("math")+"<hr>");
	}
	%>	
</body>
</html>