<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="member.DBBean" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%
String id = request.getParameter("singup_id"); 
String pw = request.getParameter("singup_pw"); 
String email = request.getParameter("singup_email"); 
String name = request.getParameter("singup_name"); 
String nicname = request.getParameter("singup_nicname"); 
String sex = request.getParameter("singup_sex"); 
%>


<jsp:useBean id="member" class="member.DateBean">
	<jsp:setProperty name="member" property="*"/>
</jsp:useBean>


<%
DBBean DBsignup = DBBean.getInstance();
DBsignup.signup(member);
%>
<%=member.getId()%>님 회원가입을 축하합니다.<br>
<%=id%>
<%=pw %>