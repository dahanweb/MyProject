<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" type="text/css" href="css\userform.css">
  <title>������ : �α���</title>
</head>
<body>
  <header>
    <div class="login_logo_wrap">
      <div class="logo"><a href="main.html">������ �ΰ�</a></div>
    </div>
  </header>
  <div class="content">
    <section>
      <article class="login_form">
        <form action="dblogin.jsp" method="post" name="form1" onsubmit="return form_login();">
          <input class="login_input" type="text" name="id" placeholder="���̵�"><p>
          <input class="login_input" type="password" name="pw" placeholder="��й�ȣ"></p>
          <input class="submit_button" type="submit" title="�α���" alt="�α���" value="�α���">
        </form>
          <span class="login_find"><a href="id_pw_find.html" target="_blank">���̵� �� ��й�ȣ ã��</a></span>
          <span class="signup"><a href="signup.jsp" target="_blank">ȸ������</a></span>
      </article>
    </section>
  </div>
  <script>
  	function form_login(){
  		var id = document.form1.id.value;
  		var pw = document.form1.pw.value;
  		
  		if(id == null || id == ""){
  			alert('���̵� �Է��ϼ���.');
  			document.form1.id.focus();
  			return false;
  		}
  		
  		if(pw==null || pw==""){
  			alert('�н����带 �Է��ϼ���.');
  			document.form1.pw.focus();
  			return false;
  		}
  		return true;
  	}
  </script>
</body>
</html>