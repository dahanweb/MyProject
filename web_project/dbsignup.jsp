<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.service.DB" %>
<% request.setCharacterEncoding("euc-kr"); %>

<jsp:useBean id="signup" class="com.service.Date">
	<jsp:setProperty name="signup" property="*"/>
</jsp:useBean>


<%
signup.setReg_date(new Timestamp(System.currentTimeMillis()));
DB DBsignup = DB.getInstance();
DBsignup.signup(signup);
%>
<jsp:getProperty name="signup" property ="id"/>�� ȸ�������� �����մϴ�.
<script>
	alert('ȸ�������� �Ϸ�Ǿ����ϴ�.');
	window.location.href="main.html";
</script>
