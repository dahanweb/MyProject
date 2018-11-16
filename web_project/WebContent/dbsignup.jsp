<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.service.DB" %>
<%@ page import="com.service.Date" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%
Date date = new Date();
date.setId(request.getParameter("id"));
date.setPw(request.getParameter("pw"));
date.setEmail(request.getParameter("email"));
date.setName(request.getParameter("name"));
date.setNicname(request.getParameter("nicname"));
date.setReg_date(new Timestamp(System.currentTimeMillis()));

DB DBsignup = DB.getInstance();
DBsignup.signup(date);
%>

<script>
	alert('회원가입이 완료되었습니다.');
	window.location.href="main.html";
</script>
