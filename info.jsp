<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>info.jsp<br>

	확인 : <%=request.getParameter("id") %>
	<%
	String uid = request.getParameter("id");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String id = "jsp", pwd = "1234";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection con = DriverManager.getConnection(url, id, pwd);
	
	String sql = "select * from student where id='"+uid+"'";
	PreparedStatement ps = con.prepareStatement(sql);
	
	ResultSet rs = ps.executeQuery();
	while(rs.next()){%>
		<h3>인 적 사 항</h3>
		<b>학번: </b><%=rs.getString("id") %><br>
		<b>이름: </b><%=rs.getString("name") %><br>
		<b>국, 영, 수 : </b>
		<%=rs.getString("kor") %>,
		<%=rs.getString("eng") %>,
		<%=rs.getString("math") %>
		<br>
	<%}%>
	<a href="quiz06_2.jsp">이전</a><br>
	<button type="button" onclick="location.href='quiz06_2.jsp'">이전</button>
	<button type="button" onclick="history.back()">이전</button>
</body>
</html>