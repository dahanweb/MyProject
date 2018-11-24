<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<% request.setCharacterEncoding("euc-kr"); %>

<%
String id="";
try{
	id=(String)session.getAttribute("id");
	if(id ==  null || id.equals("")){
		response.sendRedirect("login.jsp");
	}else{
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <title>������</title>
</head>
<body>
<header>
  <div id="top_header">
    <div class="wrap_top_header">
      <ul>
        <li class="greetings">�ȳ��ϼ���. <%=id %>��</li>
      	<li><a href="mypage.jsp?id=<%=id %>">����������</a></li>
      	<li><a href="logout.jsp">�α׾ƿ�</a></li>
      </ul>
    </div>
  </div>
  <nav>
    <div class="header_menu">
      <div class="header_menu_wrap">
        <div class="header_logo"><a href="main_ok.jsp">�ΰ�</a></div>
        <ul>
          <li>����Ʈ �Ұ�</li>
          <li>��������</li>
          <li><a href="qnasite.html">Q&A</a></li>
          <li><a href="https://dahanweb.tistory.com/?utm_source=qnaboard&utm_medium=mysite" target="_blank">��α�</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>
<div class="content">
    �ȳ��ϼ���. dahanweb ��� �����Դϴ�.<p>
    �ߺ�Ź�帳�ϴ�.
  <div class="contents">
  <section>
    <article>
    </article>
  </section>
  </div>
</div>
<footer>
  <div class="footer">
  footer
  </div>
</footer>
</body>
</html>
<%}
	}catch(Exception e){
	e.printStackTrace();
}%>