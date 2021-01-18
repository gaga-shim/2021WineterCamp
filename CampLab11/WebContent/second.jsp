<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p/>session
	<%
	String name= (String)session.getAttribute("user");
	out.print("Hello " + name);
	%>
	
	<p/>pageContext
	<%
	String name2 = (String)pageContext.getAttribute("user2", PageContext.SESSION_SCOPE);
	out.print("Hello " + name2);
	%>
	
</body>
</html>