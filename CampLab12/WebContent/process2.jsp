<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>process2</title>
</head>
<body>
	<jsp:useBean id="u" class="org.sssit.User"></jsp:useBean>
	<jsp:setProperty="*" name="u"/>
	
	Record: <br>
	<jsp:getProperty property="name" name="u"/><br>
	<jsp:getProperty property="password" name="u"/><br>
	<jsp:getProperty property="email" name="u"/><br>
</body>
</html>