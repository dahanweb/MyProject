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
  <title>다한웹</title>
</head>
<body>
<header>
  <div id="top_header">
    <div class="wrap_top_header">
      <ul>
        <li class="greetings">안녕하세요. <%=id %>님</li>
      	<li><a href="mypage.jsp?id=<%=id %>">마이페이지</a></li>
      	<li><a href="logout.jsp">로그아웃</a></li>
      </ul>
    </div>
  </div>
  <nav>
    <div class="header_menu">
      <div class="header_menu_wrap">
        <div class="header_logo"><a href="main_ok.jsp">로고</a></div>
        <ul>
          <li>사이트 소개</li>
          <li>공지사항</li>
          <li><a href="qnasite.html">Q&A</a></li>
          <li><a href="https://dahanweb.tistory.com/?utm_source=qnaboard&utm_medium=mysite" target="_blank">블로그</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>
<div class="content">
    안녕하세요. dahanweb 운영자 다한입니다.<p>
    잘부탁드립니다.
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