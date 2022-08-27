<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl.jsp</title>
</head>
<body>
	<c:out value="안녕하세요" />
	<c:set var="num" value="홍길동"/>
	<hr>
	${num}<br>
	<%
		String name = "홍길동";
		if(name.equals("홍길동")){%>
			<script type="text/javascript">
				// alert("같다...")
			</script>
		<%}%>
	<c:if test="${num eq '홍길동'}">
		<script type="text/javascript">
			// alert("이엘도 같다.")		
		</script>
	</c:if>
	
	<c:forEach var="i" begin="10" end="15" step="2">
		${i}<br>
	</c:forEach>
	
	<%
		ArrayList<String> arr = new ArrayList<>();
		arr.add("1111");
		arr.add("2222");
		arr.add("3333");
		for(String s : arr){
			
		}
	%>
	<hr>
	<c:forEach var="a" items="<%=arr %>">
		${a}<br>
	</c:forEach>
</body>
</html>