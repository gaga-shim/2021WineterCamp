<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>입력한 회원 정보</title>
</head>
<body>
	<p/>아이디: ${member.id }<br>
	<p/>비밀번호: ${member.password }<br>
	<p/>이메일: ${member.email }<br>
	<p/>이메일 수신여부: ${member.answer }<br>
	<p/>관심사항: <%= String.join(",", request.getParameterValues("interest")) %><br>
	<p/>핸드폰: ${member.phone }<br>
	<p/>자기소개: ${member.introduce }<br>
</body>
</html>