<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
    <title>About</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Stunning Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=MDgpDTyZW2g3fUesjavkQbVhuVQ15fWH"></script>
    <!--flexslider-css-->
    <!--bootstrap-->
    <link href="/staticfiles/main/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--coustom css-->
    <link href="/staticfiles/main/css/style.css" rel="stylesheet" type="text/css"/>
    <!--fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,800italic,800,700italic,700,600,600italic' rel='stylesheet' type='text/css'>
    <!--/fonts-->
    <!--script-->
    <script src="/staticfiles/main/js/jquery.min.js"> </script>
    <!-- js -->
    <script src="/staticfiles/main/js/bootstrap.js"></script>
    <script type="text/javascript" src="/staticfiles/main/js/move-top.js"></script>
    <script type="text/javascript" src="/staticfiles/main/js/easing.js"></script>
    <!--/script-->
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            theLocation();
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
            });
        });
    </script>
    <!--/script-->
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/css/style4.css" />
    <!-- 引入我的css文件 -->
    <link rel="stylesheet" href="/staticfiles/main/css/details.css">
</head>
<body>

    <!--顶部开始 -->
    <div class="header" id="home">
        <%--引入导航栏--%>
        <%@include file="/WEB-INF/pages/main/home/nav.jsp"%>

        <div class="header-banner">
            <!-- Top Navigation -->
            <section class="bgi banner5"><h2>${spots.spotsName}</h2> </section>
            <!--gallery-->
            <div class="gallery" id="gallery">
                <div class="container">
                    <script type="text/javascript" src="/staticfiles/main/js/jquery.hoverdir.js"></script>
                    <script type="text/javascript">
                        $(function() {

                            $(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

                        });
                    </script>

                    <!--script-->
                </div>
            </div>
            <!--//gallery-->
        </div>
    </div>
    <!-- 顶部结束-->
    <div class="header-banner">



        <!--about-starts-->
        <div class="about">
            <div class="container">
                <div class="about-top heading">
                    <h4><li>简&nbsp;&nbsp;介</li></h4>

                    <div class="about-bottom">
                        <!-- top3开始-->
                        <c:forEach items="${pictureList}" var="p">
                            <div class="col-md-4 about-left">
                                <img src="${p.imgurl}" alt="" width="400" height="200"/>
                            </div>
                        </c:forEach>

                        <!-- top3结束-->
                        <a id="toAllBut" href="/toallPicture?spotsId=${spots.spotsId}" class="blue button">全部图片</a>

                        <div class="clearfix"> </div>
                        <hr style="margin-top:50px;height:1px;border:none;border-top:1px solid #c1c1c1;" />
                        <div>
                            <p> <c:if test="${ empty spots.remark}">很抱歉，该景点暂无简介</c:if></p>
                            <p> <c:if test="${ !empty spots.remark}">${spots.remark}</c:if></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--advantages-starts-->
        <div class="advantages">
            <div class="container">
                <div class="col-md-6 advantages-left heading">
                    <h3>基本信息</h3>
                    <div class="advn-one">
                        <div class="ad-mian">
                            <div class="ad-left">
                                <p>1</p>
                            </div>
                            <div class="ad-right">
                                <h4>交通</h4>
                                <div id="transInfo" class="collapse in">
                                    <p>${spots.traffic}</p>
                                </div>
                                <button type="button" class="btn btn-primary" data-toggle="collapse"
                                        data-target="#transInfo">点击查看</button>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="ad-mian">
                            <div class="ad-left">
                                <p>2</p>
                            </div>
                            <div class="ad-right">
                                <h4>门票</h4>
                                <div id="ticketInfo" class="collapse">
                                    <p>${spots.ticketPrice}</p>
                                </div>
                                <button type="button" class="btn btn-primary" data-toggle="collapse"
                                        data-target="#ticketInfo">点击查看</button>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="ad-mian">
                            <div class="ad-left">
                                <p>3</p>
                            </div>
                            <div class="ad-right">
                                <h4>开放时间</h4>
                                <div id="timeInfo" class="collapse in">
                                    <p>${spots.openTime}</p>
                                </div>
                                <button type="button" class="btn btn-primary" data-toggle="collapse"
                                        data-target="#timeInfo" hidden="hidden">点击查看</button>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
                <br/><br/><br/><br/>
                <div class="col-md-6 advantages-left heading">
                    <h3>电话：</h3>
                    <div class="advn-two">
                        <ul>
                            <li class="simpleDetail"><span>${spots.telephone}</span></li>
                        </ul>
                    </div>

                </div>
                <div class="col-md-6 advantages-left heading">
                    <h3>官网：</h3>
                    <div class="advn-two">
                        <ul>
                            <li><a href="http://www.dpm.org.cn">${spots.addr}</a></li>
                        </ul>
                    </div>

                </div>
                <div class="col-md-6 advantages-left heading">
                    <h3>建议：</h3>
                    <div class="advn-two">
                        <ul>
                            <li class="simpleDetail"><span>故宫游客非常多，至少需要半天时间参观，若时间充裕，建议1天为佳。</span></li>
                        </ul>
                    </div>

                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!--advantages-end-->
        <!--team-starts-->
        <div class="team">
            <div class="container">
                <hr style="margin-top:50px;height:1px;border:none;border-top:1px solid #c1c1c1;" />
                <div class="team-top heading">
                    <h3>景&nbsp;点&nbsp;位&nbsp;置</h3>
                </div>
                <div id="allmap"></div>
                <div id="r-result" hidden="hidden">
                    经度: <input id="longitude" value="${spots.longitude}" type="text" style="width:100px; margin-right:10px;" />
                    纬度: <input id="latitude" value="${spots.latitude}" type="text" style="width:100px; margin-right:10px;" />/>
                </div>
                <!--
                <div class="team-bottom">
                    <ul class="ch-grid">
                        <li>
                            <div class="ch-item ch-img-1">
                                <div class="ch-info-wrap">
                                    <div class="ch-info">
                                        <div class="ch-info-front ch-img-1"></div>
                                        <div class="ch-info-back">
                                            <h3>Bears Type</h3>
                                            <p>by Josh Schott</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="ch-item ch-img-2">
                                <div class="ch-info-wrap">
                                    <div class="ch-info">
                                        <div class="ch-info-front ch-img-2"></div>
                                        <div class="ch-info-back">
                                            <h3>Salon Spaces illustrations</h3>
                                            <p>by Jeremy Slagle</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="ch-item ch-img-3">
                                <div class="ch-info-wrap">
                                    <div class="ch-info">
                                        <div class="ch-info-front ch-img-3"></div>
                                        <div class="ch-info-back">
                                            <h3>Leadership Series #3</h3>
                                            <p>by Dustin Leer</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div> -->
            </div>
        </div>
        <!--team-end-->
        <!--about-end-->
    </div>

<!--footer-starts-->
<div class="footer">
    <div class="container">
        <div class="footer-main">
            <div class="col-md-3 footet-left">
                <h3>INFORMATION</h3>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="gallery.html">Gallery</a></li>
                    <li><a href="typography.html">Shortcodes</a></li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
            <div class="col-md-3 footet-left">
                <h3>CATEGORIES</h3>
                <ul>
                    <li><a href="#">Travlio</a></li>
                    <li><a href="#">Whizz</a></li>
                    <li><a href="#">Sayohat</a></li>
                    <li><a href="#">Turistik</a></li>
                    <li><a href="#">Excursion </a></li>
                </ul>
            </div>
            <div class="col-md-3 footet-left">
                <h3>MY ACCOUNT</h3>
                <ul>
                    <li><a href="#">My account</a></li>
                    <li><a href="#">My addresses</a></li>
                </ul>
            </div>
            <div class="col-md-3 footet-left">
                <h3>NEWSLETTER</h3>
                <div class="sub-text">
                    <input type="text" value="Enter Your Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Email';}"/>
                    <input type="submit" value="" >
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="copy-rights">
            <p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
        </div>
    </div>
    <!---->
</div>
<!---->
<script type="text/javascript">
    $(document).ready(function() {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!---->
</body>
</html>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");
    map.centerAndZoom(new BMap.Point(116.331398,39.897445),12);
    map.enableScrollWheelZoom(true)
    // 用经纬度设置地图中心点
    function theLocation(){
        if(document.getElementById("longitude").value != "" && document.getElementById("latitude").value != ""){
            map.clearOverlays();
            var new_point = new BMap.Point(document.getElementById("longitude").value,document.getElementById("latitude").value);
            var marker = new BMap.Marker(new_point);  // 创建标注
            map.addOverlay(marker);              // 将标注添加到地图中
            map.panTo(new_point);
        }
    }
</script>