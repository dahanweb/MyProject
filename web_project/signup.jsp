<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>


<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="euc-kr">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" type="text/css" href="css\userform.css">
  <title>������ : ȸ������</title>
</head>
<body>
  <header>
    <div class="signup_logo_wrap">
      <div class="logo"><a href="main.html">������ �ΰ�</a></div>
    </div>
  </header>
  <section>
    <form action="dbsignup.jsp" method="post" id="signupform">
      <article class="signup_content">
        <h3>���̵�</h3>
        <input class="signup_input" type="text" name="signup_id">
        <h3>��й�ȣ</h3>
        <input class="signup_input" type="password" name="signup_pw">
        <h3>��й�ȣ ��Ȯ��</h3>
        <input class="signup_input" type="password" name="signup_repw">
        <h3>�̸���</h3>
        <input class="signup_input" type="email" name="signup_email">
      </article>
      <article class="user_content">
        <h3>�̸�</h3>
        <input class="signup_input" type="text" name="name">
        <h3>�г���</h3>
        <input class="signup_input" type="text" name="nicname">
        <h3>����</h3>
        <select class="signup_input" name="sex" form="signupform">
          <option value="����">����</option>
          <option value="����">����</option>
          <option value="����">����</option>
        </select>
      </article>
      <input class="submit_button" type="submit" value="�����ϱ�">
    </form>
  </section>
</body>
</html>
