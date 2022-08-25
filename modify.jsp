<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>modify.jsp
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="dao" class="day10.MemberDAO"/>
<jsp:useBean id="dto" class="day10.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	String addr[] = request.getParameterValues("addr");
	dto.setAddr( addr[0]+","+addr[1]+","+addr[2] );
	
	int re = dao.modify(dto);
	String msg, path;
	if(re == 1){
		msg = "수정 성공!!";
		path = "info.jsp?id="+dto.getId();
	}else{
		msg = "수정 실패!!";
		path = "modify_form.jsp?id="+dto.getId();
	}
%>
	<script type="text/javascript">
		alert('<%=msg%>')
		location.href='<%=path%>'
	</script>
</body>
</html>