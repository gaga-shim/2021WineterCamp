<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book</title>
</head>
<body>
	<%@page import="book.management.dao.BookDao"%>  
	<jsp:useBean id="b" class="book.management.bean.Book"></jsp:useBean>  
	<jsp:setProperty property="*" name="b"/>  
	 
	
	<% 
		System.out.println(b.getTitle());
		int i = BookDao.save(b);  
		out.print("i: " + i);
		if(i>0){  
			out.print("i: " + i);
			response.sendRedirect("add_success.jsp");  
		}else{  
			out.print("i: " + i);
			response.sendRedirect("add_error.jsp");  
		}  
	%> 
</body>
</html>