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
  <title>������ : ȸ������</title>
</head>
<body>
  <header>
    <div class="signup_logo_wrap">
      <div class="logo"><a href="main.html">������ �ΰ�</a></div>
    </div>
  </header>
  <section>
    <form action="dbsignup.jsp" method="post" id="signupform" name="form1" onSubmit="return form_submit();">
      <article class="signup_content">
        <h3>���̵�</h3>
        <input class="signup_input" type="text" name="id" maxlength="20">
        <input type="button" value="�ߺ�Ȯ��" name="confirm_id" onclick="confirmId(this.form)">
        <span id="chkMsg"></span>
        <h3>��й�ȣ</h3>
        <input class="signup_input" type="password" name="pw" maxlength="20">
        <h3>��й�ȣ ��Ȯ��</h3>
        <input class="signup_input" type="password" name="repw" maxlength="20">
        <h3>�̸���</h3>
        <input class="signup_input" type="email" name="email" maxlength="100">
      </article>
      <article class="user_content">
        <h3>�̸�</h3>
        <input class="signup_input" type="text" name="name" maxlength="10">
        <h3>�г���</h3>
        <input class="signup_input" type="text" name="nicname" maxlength="10">
      </article>
      <input class="submit_button" type="submit" value="�����ϱ�">
    </form>
  </section>
</body>
</html>
