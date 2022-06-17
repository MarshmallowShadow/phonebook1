<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo" %>


<%

	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo pVo = new PersonVo(name, hp, company);
	System.out.println(pVo);
	
	PhoneDao pDao = new PhoneDao();
	int count = pDao.personInsert(pVo);
	
	response.sendRedirect("./list.jsp");
%>
