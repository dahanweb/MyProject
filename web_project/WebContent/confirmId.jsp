<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.service.DB" %>
<% request.setCharacterEncoding("euc-kr"); %>
<%
String id = request.getParameter("id");
DB db = DB.getInstance();
boolean result = db.confirmId(id);

if(result){%>
<h4 style="text-align:center">�̹� ������� ���̵� �Դϴ�. �ٸ� ���̵� �Է����ּ���!</h4>
<button style="align:center">Ȯ��</button>
<%}else{ %>
<h4 style="text-align:center">�Է��Ͻ� <%=id %>�� ����Ͻ� �� �ִ� ID�Դϴ�.</h4>
<button style="align:center">Ȯ��</button>
<%} %>