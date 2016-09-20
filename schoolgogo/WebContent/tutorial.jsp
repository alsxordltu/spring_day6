<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Simplex</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/camera.css">
<link rel="stylesheet" href="css/form.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/forms.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
$(document).ready(function () {
    $('.slider_wrapper')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'fade',
        pagination: true, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: 'fade',
        waitBannerAnimation: false,
        progressBar: false
    });
});
$(document).ready(function () {
    ! function () {
        var map = [],
            names = [],
            win = $(window),
            header = $('header'),
            currClass
            $('.content').each(function (n) {
                map[n] = this.offsetTop
                names[n] = $(this).attr('id')
            })
            win
                .on('scroll', function () {
                    var i = 0
                    while (map[i++] <= win.scrollTop());
                    if (currClass !== names[i - 2])
                        currClass = names[i - 2]
                    header.removeAttr("class").addClass(names[i - 2])
                })
    }();
});
function goToByScroll(id) {
    $('html,body').animate({
        scrollTop: $("#" + id).offset().top
    }, 'slow');
}
$(document).ready(function () {
    $().UItoTop({
        easingType: 'easeOutQuart'
    });
});
</script>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
</head>
<body>
<div id="page1" class="content">
  <div class="container_12">
    <div class="grid_12">
      <div class="slider_wrapper">
        <ul class="items">
          <li> <img src="images/spacer.gif" alt="">
            <div class="caption banner">
              <h2>헤헤헤헤헤</h2>
            </div>
          </li>
          <li> <img src="images/spacer.gif" alt="">
            <div class="caption banner">
              <h2>ㄴㅇㄹㄴㅇㄹㄴㅇㄹ</h2>
            </div>
          </li>
          <li> <img src="images/spacer.gif" alt="">
            <div class="caption banner">
              <h2>ㄴㅇㄹㄴㅇㄹ</h2>
            </div>
          </li>
          <li> <img src="images/spacer.gif" alt="">
            <div class="caption banner">
              <h2>ㄴㅇㄹ</h2>
            </div>
          </li>
        </ul>
      </div>
      <div class="socials"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
    </div>
  </div>
</div>
</body>
<script>
</script>
</html>