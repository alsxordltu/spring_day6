<%@ page language="java" contentType="text/html; charset=UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="css/newcss.css">
</head>
<script>
function win() {
window.open("http://eschyles.mireene.com/", "", "");  //속성 지정하지 않은 기본창
}


function menu_win() {
window.open("http://eschyles.mireene.com/", "", "menubar=1");  //메뉴바 없는 팝업
}


function full_win() {
window.open("http://eschyles.mireene.com/", "", "fullscreen"); //풀스크린 방식
}

function channel_win() {
window.open("http://eschyles.mireene.com/", "", "channelmode"); //채널모드

}


function status_win() { // 상태표시바 있는 팝업
window.open("http://eschyles.mireene.com/", "", "width=400, height=300, status=1");
}


function popup_win1() { //크기 width400 height300 팝업창
window.open("http://eschyles.mireene.com/", "", "width=400, height=300");
}


function popup_win2() { //위치 left=500, top=400 에서 열리는 팝업창
window.open("http://eschyles.mireene.com/", "", "width=400, height=300, left=500, top=400");
}


function popup_win3() { //스크롤바 있는 팝업
window.open("http://eschyles.mireene.com/", "", "width=400, height=300,  scrollbars=1");
}


function popup_win4() { //주소표시줄 있는 팝업
window.open("http://eschyles.mireene.com/", "", "width=400, height=300, left=100, location=1");
}
</script>


<body>
<input type="button" value="속성 지정하지 않은 기본 창" onclick="win()">

<input type="button" value="메뉴바 없는 팝업" onclick="menu_win()">

<input type="button" value="풀스크린 팝업" onclick="full_win()">

<input type="button" value="채널모드 팝업" onclick="channel_win()">

<input type="button" value="상태표시바 있는 팝업" onclick="status_win()">

<input type="button" value="width400 height300 팝업창" onclick="popup_win1()">

<input type="button" value="위치 left=500, top=400 팝업창" onclick="popup_win2()">

<input type="button" value="스크롤바 있는 팝업" onclick="popup_win3()">

<input type="button" value="주소 입력 표시줄 있는 팝업" onclick="popup_win4()">

<input type="button" value="우헿헤" class="defaultButton" >

</body>