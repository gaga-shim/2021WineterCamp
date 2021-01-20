<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<h2>회원 정보입력</h2><br>

	<form action="form_ok.jsp" method="post">
	  <label for="id">아이디: </label><br> 
	  <input type="text" id="id" name="id"><br>
	  <br>
	  
	  <label for="password">비밀번호: </label><br>
	  <input type="password" id="password" name="password"><br>
	  <br>
	  
	  <label for="email">이메일: </label><br>
	  <input type="email" id="email" name="email"><br>
	  <br>
	  
	  <label for="recieve">이메일 수신 여부</label><br>
	  <input type="radio" id="answer" name="answer" value="yes">
	  <label for="yes">예 </label>
	  <input type="radio" id="answer" name="answer" value="no">
	  <label for="no">아니요 </label><br>
	  <br>
	  
	  <label for="interest">관심사항</label><br>
	  <input type="checkbox" name="interest" value="IT">
	  <label for="IT">IT/인터넷</label>
	  
	  <input type="checkbox" name="interest" value="movie">
	  <label for="movie">영화</label>
	  
	  <input type="checkbox" name="interest" value="music">
	  <label for="music">음악</label>
	  
	  <input type="checkbox" name="interest" value="book">
	  <label for="book">책</label>
	  
	  <input type="checkbox" name="interest" value="food">
	  <label for="food">음식</label><br>
	  <br>
	  
	  <lable for="phone">핸드폰</lable><br>
	  <input type="tel" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="010-0000-0000">
	  <br><br>
	  
	  <lable for="introduction">자기소개</lable><br>
	  <textarea id="introduction" name="introduction" rows="10" cols="30"></textarea>
	  <br><br>
	  
	  <input type="submit" value="제출">
	</form> 
	
	<jsp:useBean id="member" class="job.study.beans.memberBean"/>
	<jsp:setProperty property="*" name="member"/>
	
</body>
</html>