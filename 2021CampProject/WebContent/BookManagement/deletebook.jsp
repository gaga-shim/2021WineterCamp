<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Book</title>
</head>
<body>
	<%@page import="book.management.dao.BookDao"%>  
	<jsp:useBean id="b" class="book.management.bean.Book"></jsp:useBean>  
	<jsp:setProperty property="*" name="b"/>  
	
	<%  
		BookDao.delete(b);  
		response.sendRedirect("viewbooks.jsp");  
	%>  
</body>
</html>