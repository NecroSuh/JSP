<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>

<style type="text/css">
	*{margin: 0;}
	.wrap{width: 1000px; margin: auto;}
	.header {width: 1000px;}
	.navdiv {width: 100%; background-color: olive;}
	nav {background-color: olive; width: 1000px;}
	nav ul {list-style: none; display: flex; justify-content: flex-end;}
	nav ul li {margin: 0 10px; padding: 10px 0;}
	nav ul li a {text-decoration: none; color: white;}
	nav ul li a:hover {
	color: orange; border-bottom: 3px solid orange;
	padding-bottom: 3px;
	transition: all 0.25s;
}
	.title{
		text-shadow: 10px 10px 15px black;
		font-size: 70pt;
		text-align: center;
		padding-bottom: 20px;
		color: burlywood;
		font-family: Gabriola;
	}
</style>

</head>
<body>
	<div class="wrap">
		<div class="header">
			<h1 class="title">CARE LAB</h1>
		</div>
	</div>
	
	<div class="navdiv">
		<div class="wrap">
			<nav>
				<ul>
					<li><a href="#">HOME</a></li>
				</ul>
			</nav>
		</div>
	</div>
</body>
</html>