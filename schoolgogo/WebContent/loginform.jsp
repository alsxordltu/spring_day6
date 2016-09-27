<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style rel="stylesheet">
body {
	font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #333333;
	background: #596778;
}

/* 전체 폼 */
.loginUp {
	position: relative;
	margin: 50px auto;
	width: 380px;
	padding: 33px 25px 29px;
	background: #FFFFFF;
	border-bottom: 1px solid #C4C4C4;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
	box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}

.signUp:before, .signUp:after {
	content: '';
	position: absolute;
	bottom: 1px;
	left: 0;
	right: 0;
	height: 10px;
	background: inherit;
	border-bottom: 1px solid #D2D2D2;
	border-radius: 4px;
}

.signUp:after {
	bottom: 3px;
	border-color: #DCDCDC;
}

.loginUpTitle {
	margin: -25px -25px 25px;
	padding: 15px 25px;
	line-height: 35px;
	font-size: 26px;
	font-weight: 300;
	color: #777;
	text-align: center;
	text-shadow: 0 1px rgba(255, 255, 255, 0.75);
	background: #F7F7F7;
}

.signUpTitle:before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	height: 8px;
	background: #C4E17F;
	border-radius: 5px 5px 0 0;
	background-image: -webkit-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%,
		#F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%,
		#DB9DBE 50%, #db9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%,
		#669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
	background-image: -moz-linear-gradient(left, #c4e17f, #C4E17F 12.5%, #F7FDCA 12.5%,
		#F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%,
		#DB9DBE 50%, #DB9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%,
		#669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
	background-image: -o-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCC 12.5%, #F7FDCA
		25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE
		50%, #DB9DBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1
		87.5%, #62C2E4 87.5%, #62C2E4);
	background-image: linear-gradient(to right, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA
		25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE
		50%, #DB9CBE 62.5%, #c49cde 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1
		87.5%, #62c2e4 87.5%, #62C2E4);
}

input {
	font-family: inherit;
	color: inherit;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

/* 아이디/비밀번호를입력하세요 input */
.loginUpInput {
	width: 100%;
	height: 50px;
	margin-bottom: 25px;
	padding: 0 15px 2px;
	font-size: 17px;
	background: white;
	border: 2px solid #EBEBEB;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 -2px #EBEBEB;
	box-shadow: inset 0 -2px #EBEBEB;
}

.signUpInput:focus {
	border-color: #62C2E4;
	outline: none;
	-webkit-box-shadow: inset 0 -2px #62C2E4;
	box-shadow: inset 0 -2px #62C2E4;
}

.lt-ie9 .signUpInput {
	line-height: 48px;
}

/* 기본버튼핫핑 */
.loginUpButton {
	display: inline-block;
	vertical-align: top;
	width:170px;
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
	word-spacing: 30px; 
}

</style>
</head>
<body>

	<form class="loginUp" id="signupForm">
		<h1 class="loginUpTitle">로그인</h1>

		<input type="text" class="loginUpInput" placeholder="아이디를 입력하세요" autofocus required> 
		<input type="password" class="loginUpInput" placeholder="비밀번호를 입력하세요" required> 
		<div class="buttons">
			<input type="submit" value="학교가자!" class="loginUpButton" onClick="loginUp()">
			<input type="submit" value="돌아가기" class="loginUpButton" onClick="window.close()">
		</div>
	</form>

</body>
<script>
	function loginUp() {
		opener.location.href = 'index.jsp';
		window.close();
	}
</script>
</html>