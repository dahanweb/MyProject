<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%
String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����������</title>
</head>
<body>
�ȳ��ϼ���. <%=id %>��.
</body>
</html>