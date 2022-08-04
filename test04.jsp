<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="background-color: aqua;"> div </div>
<label style="background-color: blue;">label</label>
<span style="background-color: gray;">span</span>
<dl>
	<dt><b>H T M L</b></dt>
	<dd>웹 페이지를 <i>만들 때</i> 사용하는 언어 입니다.</dd>
</dl>
	<form action="quiz01.jsp" method="get">
	<select size="1" name="se">
		<option>사과	
		<option>배	
		<option>수박	
		<option>고구마	
	</select>
		<hr>
		<input type="text" name="id" placeholder="input id"><br>
		<input type="password" name="pwd" placeholder="input password">
		<hr>
		<fieldset style="width: 300px">
		<legend>취 미 조 사</legend>
		공부<input type="checkbox" name="hobby" value="1">
		게임<input type="checkbox" name="hobby" value="2"> 
		멍 때리기<input type="checkbox" name="hobby" value="3">
		</fieldset>
		<hr>
		10대<input type="radio" value="10" name="age" checked>
		20대<input type="radio" value="20" name="age"> 
		30대<input type="radio" value="30" name="age">
		<hr>
		<input type="submit" value="로그인"> 
		<input type="button" value="btn로그인"> 
		<input type="reset" value="초기화">
	</form>
	<hr>
	공부<input type="checkbox"> 
	게임<input type="checkbox"> 
	멍 때리기<input type="checkbox">
	<hr>
	10대<input type="radio" name="age" checked> 
	20대<input type="radio" name="age"> 
	30대<input type="radio" name="age">
	<hr>
	<input type="button" value="버튼">
	<br>
	<input type="submit" value="서브밋">
	<br>
	<input type="reset" value="초기화">
	<br>
	<input type="text" placeholder="input id">
	<br>

	<input type="password" value="비밀번호">
	<br>
	<input type="email" value="이메일">
	<br>
	<input type="radio">
	<br>
	<input type="checkbox">
	<br>
</body>
</html>