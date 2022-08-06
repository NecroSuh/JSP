<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
aaa: <%=aaa %>
<%!int aaa = 10; %>
<hr>
	<% 
		int su=1, max=100, sum1=0, oddSum=0, evenSum=0;
		for(int i=su; i<=max; i++){
			sum1 +=i;
			if(i%2==0)
				evenSum+=i;
			else
				oddSum+=i;
		}
	%>
	1~100... : <%=sum1 %><br>
	<%=su %>~<%=max %>까지의 짝수 합 : <%=evenSum %><br>
	<%=su %>~<%=max %>까지의 홀수 합 : <%=oddSum %><br>
	<input type="text" value="<%=sum1 %>">
	<hr>
	
	<% int num1 = 10, num2 = 20, sum = 0;
		sum = num1+ num2;
	%>
	<%= num1 %> + <%= num2 %> = <%= num1 + num2 %><br>
	<%= num1 %> + <%= num2 %> = <%= sum %><br>
	<%= num1 + "+" + num2 + "=" + sum %>
	
	<%String name= "jsp";%>
	
	<h1><% out.print(name);%>시작입니다.</h1>
	<% out.print("<h1>"+name+"끝 입니다.</h1>"); %>
	<hr>
		<h1><%= name %> 시작</h1>
	
	<hr>
	
	<%
	int num = 100;
	System.out.println(num);
	out.print(num);
	%>
	<%-- 
	<h3>안녕하세요<%out.print(num);%>반갑습니다.</h3>
	--%>
</body>
</html>