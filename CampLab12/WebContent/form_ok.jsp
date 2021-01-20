<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>입력한 회원 정보</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String answer = request.getParameter("answer");
		
		String[] interest = request.getParameterValues("interest");
		String interests = "";
		
		for(int i=0; i<interest.length; i++) 
			interests += interest[i] + " ";
		
		String phone = request.getParameter("phone");
		String introduction = request.getParameter("introduction");
	%>
	
	<h2>성공적으로 정보를 저장하였습니다!</h2>
	<h3>입력하신 데이터는 다음과 같습니다.</h3><br>
	
	<%= "아이디: " + id %><br><br>
	<%= "비밀번호: " + password %><br><br>
	<%= "이메일: " + email %><br><br>
	<%= "이메일 수신 여부: " + answer %><br><br>
	<%= "관심사항: "+ interests %><br><br>
	<%= "핸드폰 번호: " + phone %><br><br>
	<%= "자기소개: " + introduction %><br><br>
</body>
</html>