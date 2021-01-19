<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Lab 12</title>
</head>
<body>	
	<h2>JSP Directive Elements</h2>
	
	<h3>JSP page directive</h3>
	<p/>import
	<p/>Today is: <%= new Date() %>
	
	<p/>content 
	<%--
	<%@ page contentType=application/msword >
	<p/>Today is: <%= new Date() %>
	--%>
	
	<p/>info
	<%@ page info="composed by Sonoo Jaiswal" %>
	<p/>Today is <%= new java.util.Date() %>
	
	<p/>buffer
	<%@ page buffer="16kb" %>
	
	<p/>isELIgnored
	<%@ page isELIgnored="true" %>
	
	<p/>errorPage
	<%-- <%@ page errorPage="myerrorpage.jsp" %>
	<%= 100/0%>--%>
	
	<p/>isErrorPage
	<%@ page isErrorPage="false" %>
	<p/>Sorry an exception occured!<br>
	<%--Exception is: <%= exception %>--%>
	
	<h3>Jsp Include Directive</h3>
	<%@ include file = "header.html" %>
	
	<h3>JSP Taglib directive</h3>
	<%-- 
	<%@ taglib uri="http://www.javatpoint.com/tags" prefix="mytag" %>  
	<mytag: cureentDate/>
	--%>
	
	<h2>Exception Handling in JSP</h2>
	<form action="process.jsp">
		No 1: <input type="text" name="n1"> <br><br>
		No 2: <input type="text" name="n2"> <br><br> 
		<input type="submit" value="divide">
	</form>
	
	<h2>JSP Action Tags</h2>
	<h3>jsp : forward</h3>
	<p/>이것은 (without parameter)
	<%--<jsp:forward page="printdate.jsp"/> --%>
	<p/>이것은 index page (with parameter)
	<%--
	<jsp:forward page="printdate.jsp">
	<jsp:param name="name" value="javatpoint.com"/>
	</jsp:forward>
	 --%>
	 
	 <h3>jsp : inlcude</h3>
	 <p/>this is index page <br>
	 <jsp:include page="printdate.jsp"/>
	 <p/>end section of index page <br>
	 
	 <h3>jsp : useBean</h3>
	 <%--
	 <jsp:useBean id="obj" class="com.javatpoint.Calculator"/>
	 <%
	 int m = obj.cude(5);
	 out.print("cube of 5 is " + m);
	 %>
	  --%>
	  
	  <h3>jsp : setProperty and jsp : getProperty</h3>
	  <form action="process2.jsp" method="post">
	  	Name: <input type="text" name="name"><br>
	  	Password: <input type="text" name="password"><br>
	  	Email: <input type="email" name="email"><br>
	  	<input type="submit" value="register">
	  </form>
	  
	  <h3>jsp : plugin</h3>
	  <%--
	  <jsp:plugin align="middle" height="500" width="500"
	  code="MouseDrag.class" codebase="." name="clock" type="applet"></jsp:plugin>
	   --%>
	   
	   <h2>Expression Language</h2>
	   <p/>param example
	   <form action="process3.jsp">
	     Enter Name: <input type="text" name="name"><br>
	     <input type="submit" value="go">
	   </form>
	   <br><br>
	   
	   <p/>sessionScope example
	   <h3>Welcome to index page</h3>
	   <%
	   session.setAttribute("user", "Gahyeon");
	   %>
	   <a href="process3.jsp">visit</a>
	   <br><br>
	   
	   <p/>cookie example
	   <h4>First JSP</h4>
	   <%
	   Cookie ck = new Cookie("name", "Shim");
	   response.addCookie(ck);
	   %>
	   <a href="process3.jsp">visit</a>
</body>
</html>