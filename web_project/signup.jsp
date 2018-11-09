<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>


<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="euc-kr">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" type="text/css" href="css\userform.css">
  <title>다한웹 : 회원가입</title>
</head>
<body>
  <header>
    <div class="signup_logo_wrap">
      <div class="logo"><a href="main.html">다한웹 로고</a></div>
    </div>
  </header>
  <section>
    <form action="dbsignup.jsp" method="post" id="signupform">
      <article class="signup_content">
        <h3>아이디</h3>
        <input class="signup_input" type="text" name="signup_id">
        <h3>비밀번호</h3>
        <input class="signup_input" type="password" name="signup_pw">
        <h3>비밀번호 재확인</h3>
        <input class="signup_input" type="password" name="signup_repw">
        <h3>이메일</h3>
        <input class="signup_input" type="email" name="signup_email">
      </article>
      <article class="user_content">
        <h3>이름</h3>
        <input class="signup_input" type="text" name="name">
        <h3>닉네임</h3>
        <input class="signup_input" type="text" name="nicname">
        <h3>성별</h3>
        <select class="signup_input" name="sex" form="signupform">
          <option value="성별">성별</option>
          <option value="남자">남자</option>
          <option value="여자">여자</option>
        </select>
      </article>
      <input class="submit_button" type="submit" value="가입하기">
    </form>
  </section>
</body>
</html>
