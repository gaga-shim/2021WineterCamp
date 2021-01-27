<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
</head>
<body>
   <%@ page import="java.util.Date" %>
   <%@ page import="java.text.SimpleDateFormat" %>
   <%@page import="book.management.dao.BookDao, book.management.bean.Book"%>  
  
   <%  
      String id=request.getParameter("id");  
      Book b = BookDao.getRecordById(Integer.parseInt(id));  
      
      Date nowTime = new Date();
  	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 hh:mm:ss");
   %>  
   
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="/">AppTest</a>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="about.jsp">About</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="viewbooks.jsp">Book List</a>
				</li>
			</ul>
		</nav>
		<br>
      
      <h1>도서 편집하기</h1>

      <form action="editbook.jsp" method="post">
      	<input type="hidden" name="id" value="<%=b.getId() %>"/>
			<div class="form_horizontal">
				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="regdate">현재 시각:
					</label>
					<div class="col-sm-8">
						<input autofocus class="form-control" id="regdate" name="regdate" value="<%= sf.format(nowTime) %>" readonly />
					</div>
				</div>
	            <div class="form-group row">
	               <label class="col-form-label col-sm-2" for="title">도서명: </label>
	               <div class="col-sm-8">
	                  <input autofocus class="form-control" name="title"
	                     value="<%= b.getTitle()%>">
	               </div>
	            </div>
	
	            <div class="form-group row">
	               <label class="col-form-label col-sm-2" for="author">저자: </label>
	               <div class="col-sm-7">
	                  <input class="form-control" name="author"
	                     value="<%= b.getAuthor()%>">
	               </div>
	            </div>
	
	            <div class="form-group row">
	               <label class="col-form-label col-sm-2" for="comment">추가 정보:</label>
	               <div class="col-sm-10">
	                  <textarea class="form-control" name="comment" rows="7" cols="20"><%= b.getComment()%></textarea>
	               </div>
	            </div>
	
	            <div class="form-group row">
	               <label class="col-form-label col-sm-2"></label>
	               <div class="col-sm-10">
	                  <input type="submit" value="도서 편집하기" class="btn btn-default btn-warning"/>
	                   <a class="btn btn-outline-dark cancel" href="viewbooks.jsp">취소</a>
	               </div>
	            </div>
         </div>
      </form> 
      
      <footer>
	    	<p>&copy: 2021 WinterCamp - Gahyeon</p>
	    </footer>  
   </div>
</body>
</html>