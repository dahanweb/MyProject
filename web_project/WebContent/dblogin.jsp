<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.service.DB" %>
<% request.setCharacterEncoding("euc-kr"); %>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
%>
<%
DB logincheck = DB.getInstance();
logincheck.userCheck(id, pw);
%>
