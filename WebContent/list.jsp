<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo"  %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>

<% 
	PhoneDao phoneDao = new PhoneDao();
	
	List<PersonVo> pList = phoneDao.personSelect();
	
	String search = request.getParameter("search");
	
	if(search == null) {
		search = "";
	}
   
   //System.out.println(pList); //이 씨발것
%> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>연락처</title>
	</head>
	<body>
		<h1>전화번호부</h1>
		<h2><a href="./list.jsp">리스트</a></h2>
		
		<p>입력한 정보 내역입니다.</p>
		
		<% for(int i=0; i<pList.size(); i++) {
			int personId = pList.get(i).getPersonId();
			String name = pList.get(i).getName();
			String hp = pList.get(i).getHp();
			String company = pList.get(i).getCompany();
			
			if(search.equals("") || name.toLowerCase().contains(search)
					|| hp.replace(" ", "").replace("-", "").contains(search)
					|| company.replace(" ", "").replace("-", "").contains(search)) {
		%>
				<table border="1">
					<tr>
						<td>이름(name)</td>
						<td><%=name %></td>
					</tr>
					<tr>
						<td>핸드폰(hp)</td>
						<td><%=hp %></td>
					</tr>
					<tr>
						<td>회사(company)</td>
						<td><%=company %></td>
					</tr>
				</table>
					<form action="updateForm.jsp" method="post" style="display: inline-block">
						<button type="submit" name="personId" value="<%=personId %>">수정</button>
					</form>
					<form action="delete.jsp" method="post" style="display: inline-block">
						<button type="submit" name="personId" value="<%=personId %>">삭제</button>
					</form>
				<br>
				<br>
		<%
			}
		} %>
		
		<a href="./writeForm.jsp">추가번호 등록</a>
		
		<h3>사용자 검색</h3>
		<form action="./list.jsp" method="get">
			<input type="text" name="search" value="">
			<button type="submit">검색</button>
		</form>
		
	</body>
</html>