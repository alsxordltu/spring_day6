<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<style rel="stylesheet">
header {
	margin:100px;
}
body {
   font: 13px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
   color: #333333;
   background: #FFCCFF;/* 연핑 */ 
}
/* 흰 버튼 바탕 */
.signUp { 
   margin: 5px auto;  
   width: 280px;
   padding: 33px 25px 29px;
   background: #FFFFFF;
   border-bottom: 3px solid #C4C4C4;
   border-radius: 7px;
   -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
   box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}
/* 기본버튼핫핑 */
.signUpButton {
   position: relative;
   vertical-align: top;
   width: 100%;
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
/* 버튼 수평정렬*/
 .inGridBtns { 
	display:inline-block; /* inline-block이어야 자식객체의 내용에 따라 가변적인 크기를 가질 수 있다. */
	cursor:pointer; 
	height: 16px /* 버튼의 height의 근사치로 입력해야 버튼에 fit되어 수직 가운데 정렬이 된다. */
}
.inGridBtns div{
	float:left 
}

</style>
</head>
<header>

</header>
<body>
<h1>학교가자!</h1>
<img src="images/schoolgo.png" style="margin-left: auto; margin-right: auto; display: block; width:350px; padding:50px; ">
<div class="inGridBtns">
<form class="signUp" id="login" name="loginbutton" >
 <input type="submit" value="로그인" class="signUpButton" onClick="popuplogin()">
</form>
<form class="signUp" id="join" name="joinbutton">
 <input type="submit" value="회원가입" class="signUpButton" onClick="popupjoin()">
</form>
</div>
</body>
<script>
	/* 로그인클릭시 loginform.jsp 팝업(가운데) */
	function popuplogin(){
		 cw=screen.availWidth;     //화면 넓이계산
		 ch=screen.availHeight;    //화면 높이계산
		 sw=415;    //띄울 창의 넓이
		 sh=410;    //띄울 창의 높이
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