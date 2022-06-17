<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="java.util.*"%>

<%

int personId = Integer.parseInt(request.getParameter("personId"));
	
	PhoneDao pDao = new PhoneDao();
	List<PersonVo> pList = pDao.personSelect();
	
	int count = pDao.personDelete(personId);
	
	response.sendRedirect("./list.jsp");
%>
