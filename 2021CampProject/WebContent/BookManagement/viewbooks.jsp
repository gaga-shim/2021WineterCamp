<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Book List</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
</head>
<body>
	<%@page import="book.management.dao.BookDao, book.management.bean.*, java.util.*"%>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
	  
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="/">AppTest</a>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="about.jsp">About</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="viewbooks.jsp">Book List</a>
				</li>
			</ul>
		</nav>
		<br>
	    <h1>도서 리스트</h1>  
	    <%  
			List<Book> list=BookDao.getAllRecords();  
			request.setAttribute("list", list);  
		%>  
		
	    <div class="table-responsive-sm">
	    	<table class="table table-hover">
				<thead>
					<tr>
						<th>No</th>
						<th>도서명</th>
						<th>저자</th>
						<th>추가 정보</th>
						<th>등록 날짜</th>
						<th>수정</th>
						<th>삭제</th>
						<th class="d-print-none">
					</tr>
				</thead>
				<tbody>
					
					<%--<c:forEach items="${problems}" var="problem" varStatus="status"> --%>
					<c:forEach items="${list}" var="b" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>${b.getTitle()}</td>
							<td>${b.getAuthor()}</td>
							<td>${b.getComment()}</td>
							<td>${b.getRegdate()}</td>
							<td><a class="btn btn-sm btn-warning" href="editform.jsp?id=${b.getId()}">Edit</a></td>
							<td> <a class="btn btn-sm btn-danger" href="deletebook.jsp?id=${b.getId()}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>  
			<a class="btn btn-sm btn-success" href="addbookform.jsp">새로운 도서 추가하기</a>
	    	<br>
	    </div>

	    <footer>
	    	<p>&copy: 2021 WinterCamp - Gahyeon</p>
	    </footer>
	</div>

	
</body>
</html>