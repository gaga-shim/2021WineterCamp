<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book Error</title>
</head>
<body>
	Response.Write("<script>alert('죄송합니다. 도서를 추가하지 못했습니다.');</script>");
	Response.Write("<script>location.href='viewbooks.jsp';</script>");
</body>
</html>