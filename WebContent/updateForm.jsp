<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"  %>
<%@ page import="java.util.List" %>

<%

int personId = Integer.parseInt(request.getParameter("personId"));
	PhoneDao phoneDao = new PhoneDao();
	
	PersonVo pVo = phoneDao.getPerson(personId);
%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>수정</title>
	</head>
	<body>
		<h1>전화번호부</h1>
		<h2>연락처 수정폼</h2>
		<form action="update.jsp" method="post">
			<label for="name">이름(name)</label>
			<input type="text" id="name" name="name" value="<%=pVo.getName() %>"><br>
			<label for="hp">휴대전화(hp)</label>
			<input type="text" id="hp" name="hp" value="<%=pVo.getHp() %>"><br>
			<label for="company">회사번호(company):</label>
			<input type="text" id="company" name="company" value="<%=pVo.getCompany() %>"><br>
			<input type="hidden" name="personId" value="<%=pVo.getPersonId() %>"><br>
			<button type="submit">저장</button>
		</form>
	</body>
</html>