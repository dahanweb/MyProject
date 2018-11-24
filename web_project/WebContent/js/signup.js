function form_submit(){
  		var id = document.form1.id.value;
  		var pw = document.form1.pw.value;
  		var repw = document.form1.repw.value;
  		var email = document.form1.email.value;
  		var name = document.form1.name.value;
  		var nicname = document.form1.nicname.value;
  		var idReg = /^[a-zA-Z]+[a-z0-9A-Z]{3,19}$/g;
  		
  		if(id == null || id == ""){
  			alert('아이디를 입력하세요.');
  			document.form1.id.focus();
  			return false;
  		}
  		if( !idReg.test(id) ) {
  			alert("아이디는 영소문자로 시작하는 4~20자 영문자 또는 숫자이어야 합니다.");
  			return false;
  		}

  		
  		if(pw == null || pw == ""){
  			alert('비밀번호를 입력하세요.');
  			document.form1.pw.focus();
  			return false;
  		}
  		if(repw == null || repw == ""){
  			alert('다시한번 비밀번호를 입력하세요.');
  			document.form1.repw.focus();
  			return false;
  		}
  		if(email == null || email == ""){
  			alert('이메일을 입력하세요.');
  			document.form1.email.focus();
  			return false;
  		}
  		if(name == null || name == ""){
  			alert('이름을 입력하세요.');
  			document.form1.name.focus();
  			return false;
  		}
  		if(nicname == null || nicname == ""){
  			alert('닉네임을 입력하세요.');
  			document.form1.nicname.focus();
  			return false;
  		}
  		if(pw == repw){
  			return true;
  		}
  		else
  			alert('비밀번호를 동일하게 입력하세요.')
  			return false;
  	}
function confirmId(){
		url = "confirmId.jsp?id=" + document.form1.id.value;
  		open(url, "confirm", "toolbar=no, location=no, status=no, menubar=no, scollbars=no, resizeable=no, width=200, height=200");
}