<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.service.DB" %>
<% request.setCharacterEncoding("euc-kr"); %>
<%
String id = request.getParameter("id");
DB db = DB.getInstance();
boolean result = db.confirmId(id);

if(result){%>
<h4 style="text-align:center">이미 사용중인 아이디 입니다. 다른 아이디를 입력해주세요!</h4>
<button style="align:center">확인</button>
<%}else{ %>
<h4 style="text-align:center">입력하신 <%=id %>는 사용하실 수 있는 ID입니다.</h4>
<button style="align:center">확인</button>
<%} %>