<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 관리 시스템</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
<style>
	body {
		width: 100%;
	}
	
	h1 {
		text-align: center;
   		font-size: 70px;
	}
	
	a {
		vertical-align: center;
		padding: 10px;
		width: 150px;
	}
	
	footer {
		text-align: left;
	}
	
	.header {
		margin: 120px;
		height: 200px;
		
	}
	
	.menu {
		width: 100%;
	}
	
	.button {
		display: inline-block;
		text-align: center;
		width: 48%;
		height: 100px;
		margin: 0 auto;
		
	}
	
	@media only screen and (max-width: 700px) {
		.header {
			margin: 70px;
			font-size: 40px;
		}
	}
</style>
</head>
<body>
	<div class="container">
		<div class="header">
			<h1>도서 관리 시스템</h1>
		</div>
		
		<div class="menu">
			<div class="button">
				<a class="btn btn-sm btn-warning" href="addbookform.jsp">새로운 도서 추가하기</a>
			</div>
			<div class="button">
				<a class="btn btn-sm btn-warning" href="viewbooks.jsp">도서 리스트 보기</a>
			</div>
		</div>
		<footer>
		    	<p>&copy: 2021 WinterCamp - Gahyeon</p>
	    </footer>  
    </div>
</body>
</html>