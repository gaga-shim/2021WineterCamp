<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>JSP Scriptlet Tag</h2>
	
	<h3>scriptlet tag</h3>
	<% out.print("Welcome to jsp");%>
	<%
	String name = request.getParameter("uname");
	out.print("Welcome "+name);
	%>
	<br>
	
	<h3>expression tag</h3>
	<%= "Welcome to JSP" %><br>
	Current Time: <%= java.util.Calendar.getInstance().getTime() %>
	<%= "Welcom " + request.getParameter("uname2") %>
	
	<h3>declaration tag</h3>
	<%! int data=50; %>
	<%= "Value of the variable is:" + data %>
	<%! 
	int cube(int n) {
	return n*n*n;
	}
	%>
	<%= "Cube of 3 is:" + cube(3) %>
	
	<h2>JSP Implicit Objects</h2>
	<h3>out</h3>
	<% out.print("Today: " + java.util.Calendar.getInstance().getTime()); %><br>
	
	<h3>response</h3>
	
	
	<h3>config</h3>
	<%
	out.print("Welcome " + request.getParameter("uname4"));
	String driver = config.getInitParameter("dname");
	out.print("driver name is = " + driver);
	%>
	
	<h3>application</h3>
	<%
	out.print("Welcome " + request.getParameter("uname5"));
	String driver2 = application.getInitParameter("dname");
	out.print("driver name is = " + driver2);
	%>
	
	<h3>session</h3>
	<%
	String name2 = request.getParameter("uname6");
	out.print("Welcome " + name2);
	session.setAttribute("user", name2);
	%>
	<a href="second.jsp">second jsp page</a>
	
	<h3>pageContext</h3>
	<%
	String name3 = request.getParameter("uname7");
	out.print("Welcome " + name3);
	pageContext.setAttribute("user2", name3, PageContext.SESSION_SCOPE);
	%>
	<a href="second.jsp">second jsp page</a>
	
	<h3>page</h3>
	<% this.log("이것은 page 객체"); %>
	
	<h3>exception</h3>
	
</body>
</html>