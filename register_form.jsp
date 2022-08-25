<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../default/header.jsp"%>
	회원가입

	<script type="text/javascript">
		function chk() {
			let id = document.getElementById("id")
			let pwd1 = document.getElementById("pwd1")
			let pwd2 = document.getElementById("pwd2")
			if (id.value == "") {
				alert("아이디는 필수 항목 입니다!!!")
				id.focus()
			} else if (pwd1.value == "") {
				alert("비밀번호 필수 항목 입니다!!!")
				pwd1.focus()
			} else if (pwd2.value == "") {
				alert("비밀번호 확인은 필수 항목 입니다!!!")
				pwd2.focus()
			} else {
				fo.submit()
			}
		}
		function chkPwd() {
			//alert("확인확인")
			let p1 = document.getElementById("pwd1")
			let p2 = document.getElementById("pwd2")

			let label = document.getElementById("lb")

			if (p1.value == p2.value) {
				label.innerHTML = "<B style='color:blue;'>일치!!</B>"
			} else {
				//alert("불일치")
				p1.focus();
				p1.value = ""
				p2.value = ""
				label.innerHTML = "<B style='color:red;'>불일치</B>"
			}
		}
	</script>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="/jsp_project/resources/js/daumPost.js"></script>

	<form id="fo" action="register.jsp" method="get">
		<input type="text" id="id" name="id">(*필수항목)<br> 
		<input type="text" id="pwd1" name="pwd"> <label id="lb">(*필수항목)</label><br>
		<input type="text" id="pwd2" onchange="chkPwd()"><br>
		<input type="text" name="name"><br> <input type="text" readonly placeholder="우편번호" id="addr1" name="addr">
		<button type="button" onclick="daumPost()">우편번호 찾기</button><br>
		<input type="text" readonly placeholder="주소" id="addr2" name="addr">
		<input type="text" placeholder="상 세 주 소" name="addr"> <br>
		<input type="tel" maxlength="15" name="tel"><br> 
		<input type="button" onclick="chk()" value="전송">
	</form>
	<%@include file="../default/footer.jsp"%>

</body>
</html>