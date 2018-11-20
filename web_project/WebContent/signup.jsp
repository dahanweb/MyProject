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
        <input class="signup_input" type="text" name="id" maxlength="20" onkeyup="idcheck()">
        <span id="idcheck"></span>
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

  <script>
  
  	function idcheck(){

  	}
  	
  	function form_submit(){
  		var id = document.form1.id.value;
  		var pw = document.form1.pw.value;
  		var repw = document.form1.repw.value;
  		var email = document.form1.email.value;
  		var name = document.form1.name.value;
  		var nicname = document.form1.nicname.value;
  		var idReg = /^[a-zA-Z]+[a-z0-9A-Z]{3,19}$/g;
  		
  		if(id == null || id == ""){
  			alert('���̵� �Է��ϼ���.');
  			document.form1.id.focus();
  			return false;
  		}
  		if( !idReg.test(id) ) {
  			alert("���̵�� ���ҹ��ڷ� �����ϴ� 4~20�� ������ �Ǵ� �����̾�� �մϴ�.");
  			return false;
  		}
  		url = "confirmId.jsp?id="+id;
  		if(pw == null || pw == ""){
  			alert('��й�ȣ�� �Է��ϼ���.');
  			document.form1.pw.focus();
  			return false;
  		}
  		if(repw == null || repw == ""){
  			alert('�ٽ��ѹ� ��й�ȣ�� �Է��ϼ���.');
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
  			alert('��й�ȣ�� �����ϰ� �Է��ϼ���.')
  			return false;
  	}
  </script>
</body>
</html>
