<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
 window.onload = function(){
  document.getElementById("registPopup").style.display="none";
  document.getElementById("bodyLayer").style.filter = "alpha(opacity=100)";
  document.getElementById("bodyLayer").style.opacity = "1";
 }
 

 function showPopup(){
  document.getElementById("registPopup").style.top = 450;
  document.getElementById("registPopup").style.left = 300;
  document.getElementById("test_btn").removeAttribute("href");
  document.getElementById("test_btn").style.cursor = "Arrow";
  document.getElementById("registPopup").style.display = "block";
  document.getElementById("bodyLayer").style.filter = "alpha(opacity=10)";
  document.getElementById("bodyLayer").style.opacity = "0.1";

  
 }

 function closePopup(){
  document.getElementById("test_btn").setAttribute("href","javascript: showPopup();");
  document.getElementById("test_btn").style.cursor = "Pointer";
  document.getElementById("registPopup").style.display="none";
  document.getElementById("bodyLayer").style.filter = "alpha(opacity=100)";
  document.getElementById("bodyLayer").style.opacity = "1";
 }
</script>

  <div id="registPopup" style="position: relative;z-index:1;width:200;height:100; background-color: #F5F5F5;">
  <h3>투명위에 뜨는 팝업....</h3>
  <input type="button" onclick="closePopup();" value="닫기" />
 </div>

 <div id="bodyLayer" style="z-index:0;position:absolute;top:0;width:227;height:27" >
 <iframe name="imgFrame" id="imgFrame" src="http://blogfiles6.naver.net/data28/2008/2/1/181/%B1%B8%C1%F6%BC%BA102_ghkdwo412.jpg" width=600 height=900 scrolling=no frameborder=0></iframe>
 <br />
 <br /><a id="test_btn" href="javascript: showPopup();"><img src="http://sstatic.naver.com/search/images11/logo_naver.gif" border=0 /></a>
 </div>
 </html>