<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	int personId = Integer.parseInt(request.getParameter("personId"));
	
	PersonVo pVo = new PersonVo(personId, name, hp, company);
	PhoneDao pDao = new PhoneDao();
	
	pDao.personUpdate(pVo);
	
	response.sendRedirect("./list.jsp");
%>
