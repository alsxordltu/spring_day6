<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<style>
.joinUp {
   margin: 50px auto;
   width: 500px;
   padding: 33px 25px 50px;
   background: #FFFFFF;
   border-bottom: 1px solid #C4C4C4;
   border-radius: 5px;
   -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
   box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}
.joinUpTitle {
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
.joinUpInput {
   width: 300px;
   height: 40px;
   margin-bottom: 25px;
   padding: 0 15px 2px;
   font-size: 17px;
   background: white;
   border: 2px solid #EBEBEB;
   border-radius: 4px;
   -webkit-box-shadow: inset 0 -2px #EBEBEB;
   box-shadow: inset 0 -2px #EBEBEB;
}
.joinUpInputRadio{
   width: 20px;
   height: 20px;
   font-size: 17px;
   background: white;
   padding: 0 15px 2px;
   border-radius: 4px;

}
.joinUpButton {
   position: relative;
   vertical-align: top;
   width: 100%;
   height: 54px;
   padding: 0;
   font-size: 22px;
   color: white;
   text-align: center;
   text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
   background: #F0776C;
   border: 0;
   border-bottom: 2px solid #D76B60;
   border-radius: 5px;
   cursor: pointer;
   -webkit-box-shadow: inset 0 -2px #D76B60;
   box-shadow: inset 0 -2px #D76B60;
}
.loginUp {
   position: relative;
   margin: 50px auto;
   width: 280px;
   padding: 33px 25px 29px;
   background: #FFFFFF;
   border-bottom: 1px solid #C4C4C4;
   border-radius: 5px;
   -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
   box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}


</style>
</head>
<body>
<form class="joinUp" id="joinForm" method="post">
	<h1 class="joinUpTitle">회원가입</h1>
	아이디<br><input type="text" class="joinUpInput" placeholder="아이디를입력하세요" autofocus required>
	<br>비밀번호<br><input type="password" class="joinUpInput" placeholder="비밀번호를입력하세요" required>
	<br>성명<br><input type="text" class="joinUpInput" placeholder="성명을 입력하세요" name="name">
	<br>성별<br>남자<input type="radio" name="gender" class="joinUpInputRadio" value="남자">
	여자<input type="radio" name="gender" class="joinUpInputRadio" value="여자">
	<br>이메일<br><input type="text" class="joinUpInput" placeholder="이메일을 입력하세요">
	<br>전화번호<br><input type="text" class="joinUpInput" placeholder="전화번호를 입력하세요">
	<br>자기소개<br><textarea cols="80" rows="3" name="introduce" class="joinUpInput"></textarea>
</form>
<form class="signUp" id="join" name="joinbutton">
 <input type="submit" value="회원가입" class="joinUpButton" onClick="loginUp()">
</form>
<form class="signUp" id="login"name="loginbutton"  action="loginform.jsp" target="popwin">
 <input type="submit" value="돌아가기" class="joinUpButton" onClick="window.close()">
</form>

</body>
<script>
function loginUp(){
	opener.location.href='index.jsp';
	window.close();
}

</script>
</html>