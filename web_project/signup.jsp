<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR" %>


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
    <form action="dbsignup.jsp" method="post" id="signupform" name="form1" onSubmit="return form_submit();" onclick="return pw_check();">
      <article class="signup_content">
        <h3>���̵�</h3>
        <input class="signup_input" type="text" name="id">
        <h3>��й�ȣ</h3>
        <input class="signup_input" type="password" name="pw">
        <h3>��й�ȣ ��Ȯ��</h3>
        <input class="signup_input" type="password" name="repw">
        <h3>�̸���</h3>
        <input class="signup_input" type="email" name="email">
      </article>
      <article class="user_content">
        <h3>�̸�</h3>
        <input class="signup_input" type="text" name="name">
        <h3>�г���</h3>
        <input class="signup_input" type="text" name="nicname">
      </article>
      <input class="submit_button" type="submit" value="�����ϱ�">
    </form>
  </section>

  <script>
  	function form_submit(){
  		var id = document.form1.id.value;
  		var pw = document.form1.pw.value;
  		var repw = document.form1.repw.value;
  		var email = document.form1.email.value;
  		var name = document.form1.name.value;
  		var nicname = document.form1.nicname.value;
  		
  		if(id == null || id == ""){
  			alert('���̵� �Է��ϼ���.');
  			document.form1.id.focus();
  			return false;
  		}
  		if(pw == null || pw == ""){
  			alert('�н����带 �Է��ϼ���.');
  			document.form1.pw.focus();
  			return false;
  		}
  		if(repw == null || repw == ""){
  			alert('�н����带 �ٽ� �Է��ϼ���.');
  			document.form1.repw.focus();
  			return false;
  		}
  		if(email == null || email == ""){
  			alert('�̸����� �Է��ϼ���.');
  			document.form1.email.focus();
  			return false;
  		}
  		if(name == null || name == ""){
  			alert('�̸��� �Է��ϼ���.');
  			document.form1.name.focus();
  			return false;
  		}
  		if(nicname == null || nicname == ""){
  			alert('�г����� �Է��ϼ���.');
  			document.form1.nicname.focus();
  			return false;
  		}
  		if(pw == repw){
  			return true;
  		}
  		else
  			alert('�н����带 �ٽ� �Է��ϼ���.')
  			return false;
  	}
  </script>
</body>
</html>
