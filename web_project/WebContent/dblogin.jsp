<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.service.DB" %>
<% request.setCharacterEncoding("euc-kr"); %>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

DB db = DB.getInstance();
int check = db.userCheck(id, pw);

if(check == 1){ //성공
	session.setAttribute("id", id); // id 속성에 값을 할당.
	response.sendRedirect("main_ok.jsp");
}else if(check == 0){ //실패
	%><script>
	alert('아아디·비밀번호가 맞지 않습니다.');
	history.go(-1);
	</script><%
}
%>