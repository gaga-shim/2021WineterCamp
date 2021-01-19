<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>error</title>
</head>
<body>
	<%@ page isErrorPage="true" %>
	<h3>Sorry an exception occured!</h3>
	Exception is: <%=exception %>
</body>
</html>