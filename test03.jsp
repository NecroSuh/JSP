<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*
	태그 : 태그 선택자
	.이름 : class 선택자
	#이름 : id 선택자
*/
	img:hover{
		/*width: 200px; height: 200px;*/
		transform : scale(1.2)
}
	h3{color:red; font-family: 궁서체;}
	#test{background-color: olive;}
	.ddd{color: lime;}
</style>
</head>
<body>
	<table border="1">	
		<tr>
			<th colspan="2">1</th> <th>3</th>
		</tr>
		<tr>
			<th rowspan="2">1111</th> <th>2222</th> <th>3</th>
		</tr>
		<tr>
			<td>1</td> <td>3</td>
		</tr>
	</table>
<hr>
	<div id="test" class="ddd">div 입니다.</div>
	<h3>안녕하세요</h3>
	<a href="https://www.naver.com/"> 
		<img src="다운로드.jfif" width="100px" height="100px">
	</a>
<hr>
	<a href="https://www.naver.com/">네이버 이동</a>
	<a href="test02.jsp" title="Hello world">test2</a>
</body>
</html>