<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--引入基本的css文件和js文件 --%>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--flexslider-css-->

<!--bootstrap-->
<link href="/staticfiles/main/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<!--coustom css-->
<link href="/staticfiles/main/css/style.css" rel="stylesheet" type="text/css"/>
<!--fonts-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,800italic,800,700italic,700,600,600italic' rel='stylesheet' type='text/css'>
<!--/fonts-->

<!-- 我的css -->
<link  href="/staticfiles/main/css/mycss.css"  rel="stylesheet" type="text/css">
<!--script-->
<script src="/staticfiles/main/js/jquery.min.js"> </script>
<!-- js -->
<script src="/staticfiles/main/js/bootstrap.js"></script>
<!-- js -->
<!-- js -->
<script type="text/javascript" src="/staticfiles/main/js/move-top.js"></script>
<script type="text/javascript" src="/staticfiles/main/js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
        });
    });
</script>
<!--/script-->
<!-- 引入天气插件的js -->
<!-- <script type="text/javascript" src="js/weather.js"/> -->

