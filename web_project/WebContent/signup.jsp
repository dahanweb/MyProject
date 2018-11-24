<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR" %>
<%@ page import="com.service.DB" %>
<%request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="euc-kr">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" type="text/css" href="css\userform.css">
  <script src="js/signup.js" charset="euc-kr"></script>
  <title>다한웹 : 회원가입</title>
</head>
<body>
  <header>
    <div class="signup_logo_wrap">
      <div class="logo"><a href="main.html">다한웹 로고</a></div>
    </div>
  </header>
  <section>
    <form action="dbsignup.jsp" method="post" id="signupform" name="form1" onSubmit="return form_submit();">
      <article class="signup_content">
        <h3>아이디</h3>
        <input class="signup_input" type="text" name="id" maxlength="20">
        <input type="button" value="중복확인" name="confirm_id" onclick="confirmId(this.form)">
        <span id="chkMsg"></span>
        <h3>비밀번호</h3>
        <input class="signup_input" type="password" name="pw" maxlength="20">
        <h3>비밀번호 재확인</h3>
        <input class="signup_input" type="password" name="repw" maxlength="20">
        <h3>이메일</h3>
        <input class="signup_input" type="email" name="email" maxlength="100">
      </article>
      <article class="user_content">
        <h3>이름</h3>
        <input class="signup_input" type="text" name="name" maxlength="10">
        <h3>닉네임</h3>
        <input class="signup_input" type="text" name="nicname" maxlength="10">
      </article>
      <input class="submit_button" type="submit" value="가입하기">
    </form>
  </section>
</body>
</html>
