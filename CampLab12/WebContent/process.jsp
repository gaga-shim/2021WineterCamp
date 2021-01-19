<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>process</title>
</head>
<body>
	<%@ page errorPage="error.jsp" %>
	<%
	String num1 = request.getParameter("n1");
	String num2 = request.getParameter("n2");
	
	int a = Integer.parseInt(num1);
	int b = Integer.parseInt(num2);
	int c = a/b;
	
	out.print("division of number is " + c);
	%>
</body>
</html>