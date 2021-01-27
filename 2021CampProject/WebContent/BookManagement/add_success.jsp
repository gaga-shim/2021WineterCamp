<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book Success</title>
</head>
<body>
	Response.Write("<script>alert('추가하신 도서가 정상적으로 처리되었습니다!');</script>");
	Response.Write("<script>location.href='viewbooks.jsp';</script>");
</body>
</html>
