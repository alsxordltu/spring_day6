<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style rel="stylesheet">
header {
	margin: 100px;
}

body {
	font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #333333;
	background: #FFCCFF; /* 연핑 */
}
/* 흰 버튼 바탕 */
.signUp {
	display: inline-block; width : 280px;
	padding: 20px 20px 20px;
	background: #FFFFFF;
	border-bottom: 3px solid #C4C4C4;
	border-radius: 7px;
	-webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
	box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
	width: 280px;
}
/* 기본버튼핫핑 */
.signUpButton {
	display: inline-block;
	vertical-align: top;
	width:100%;
	height: 60px;
	padding: 10px;
	font-size: 22px;
	color: white;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
	background: #FF66FF;
	border: 0;
	border-bottom: 2px solid #D76B60;
	border-radius: 5px;
	cursor: pointer;
	-webkit-box-shadow: inset 0 -3px #D76B60;
	box-shadow: inset 0 -3px #FF00CC;
}

/* 기본버튼 핫핑 눌렀을때 눌리는 모션*/
.signUpButton:active {
	top: 2px;
	outline: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

.buttons {
	margin: 0 auto;
	text-align:center;
	word-spacing: 80px; 
}
</style>
</head>
<header> </header>
<body>
	<h1 style="text-align:center">학교가자!</h1>
	<img src="images/schoolgo.png"
		style="margin-left: auto; margin-right: auto; display: block; width: 350px; padding: 50px;">
	<div class="buttons">
		<form class="signUp" id="login" name="loginbutton">
			<input type="submit" value="로그인" class="signUpButton"
				onClick="popuplogin()">
		</form>
		
		<form class="signUp" id="join" name="joinbutton">
			<input type="submit" value="회원가입" class="signUpButton"
				onClick="popupjoin()">
		</form>
	</div>
</body>
<script>
	/* 로그인클릭시 loginform.jsp 팝업(가운데) */
	function popuplogin(){
		 cw=screen.availWidth;     //화면 넓이계산
		 ch=screen.availHeight;    //화면 높이계산
		 sw=600;    //띄울 창의 넓이
		 sh=500;    //띄울 창의 높이
		 ml=(cw-sw)/2;        //가운데 띄우기위한 창의 x위치
		 mt=(ch-sh)/2;         //가운데 띄우기위한 창의 y위치
		window.open('loginform.jsp','loginbutton','width='+sw+',height='+sh+',top='+mt+',left='+ml+',resizable=no,scrollbars=yes');
		loginbutton.submit();
	}
	/* 로그인클릭시 joinform.jsp 팝업 */
	function popupjoin(){
		window.open('joinform.jsp','joinbutton','width=800,height=1200');
		loginbutton.submit();
	}
	
</script>
</html>