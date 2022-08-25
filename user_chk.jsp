<%@page import="day10.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>user_chk.jsp<br>
	<%--
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		MemberDAO dao = new MemberDAO();
		dao.userChk(id, pwd);
	--%>
	<jsp:useBean id="dao" class="day10.MemberDAO" />
	<jsp:useBean id="dto" class="day10.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<%
		int result = dao.userChk(dto.getId(), dto.getPwd());
		String msg = "";
		String path = "";
		if( result == 0){
			session.setAttribute("login", dto.getId() );
			msg = "로그인 성공";
			path = "successLogin.jsp";
		}else if( result == 1){
			msg = "비밀번호 틀림";
			path = "login.jsp";
		}else{
			msg = "존재하지 않는 아이디";
			path = "login.jsp";
		}
	%>
	<script type="text/javascript">
		alert('<%=msg%>');
		location.href='<%=path%>';
	</script>
	
	
	result : <%= result %>
</body>
</html>














