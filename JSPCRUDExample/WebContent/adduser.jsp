<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
</head>
<body>
	
	<%@page import="com.javatpoint.dao.UserDao"%>  
	<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
	<jsp:setProperty property="*" name="u"/>  
	  
	
	<%= u.getName() %>
	
	<% 
		int i = UserDao.save(u);  
		if(i>0){  
			out.print("i: " + i);
			response.sendRedirect("adduser-success.jsp");  
		}else{  
			out.print("i: " + i);
			response.sendRedirect("adduser-error.jsp");  
		}  
	%> 
</body>
</html>