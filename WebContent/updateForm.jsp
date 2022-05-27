<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>수정</title>
	</head>
	<body>
		<h1>전화번호부</h1>
		<h2>연락처 수정폼</h2>
		<form action="update.jsp" method="get">
			<label for="name">이름(name)</label>
			<input type="text" id="name" name="name" value=""><br>
			<label for="hp">휴대전화(hp)</label>
			<input type="text" id="hp" name="hp" value=""><br>
			<label for="company">회사번호(company):</label>
			<input type="text" id="company" name="company" value=""><br>
			<button type="submit" name="personId" value="<%=request.getParameter("personId") %>">제출</button>
		</form>
	</body>
</html>