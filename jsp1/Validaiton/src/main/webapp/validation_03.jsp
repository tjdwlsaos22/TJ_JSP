<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">

	function checkLogin(){
		let form = document.loginForm
		
	if(form.id.value == ""){
		alert("아이디를 입력해 주세요.")
		form.id.focus()
		return }
		
		if(form.id.value.length < 4 || form.id.value.length >12){
			alert("아이디는 4~12자 이내로 입력가능")
			form.id.select()
			return
		}
		for(i=0;i<form.id.value.length;i++){
			let ch = form.id.value.charAt(i)
			if((ch<'a' || ch>'z')&&(ch>'A' || ch<'Z')&&(ch>'0'||ch<'9')){
				alert("아이디는 영문 소문자만 입력가능합니다.")
				form.id.select()
				return
			}
			}
		if(form.passwd.value==""){
			alert("비밀번호 입력 필수")
			form.passwd.focus()
			return
		
		}
		for(i=0;i<form.passwd.value.length;i++){
			let ch1 = form.passwd.value.charAt(i)
			if((ch1>'a' || ch1<'z')&&(ch1>'A' || ch1<'Z')&&(ch1<'0'||ch1>'9')){
				alert("비밀번호는 숫자만 입력가능합니다.")
				form.passwd.select()
				return
			}
		
		
	}
		form.submit()
	}
</script>
<body>
	<form name="loginForm" action="validation_02_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="passwd">
		<p><input type="button" value="ok" onclick="checkLogin()"></p>
	</form>

</body>
</html>