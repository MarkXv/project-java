<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
    <title>Photograph</title>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Stunning Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,--%>
    Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--flexslider-css-->
    <!--bootstrap-->
    <link href="/staticfiles/main/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--coustom css-->
    <link href="/staticfiles/main/css/style.css" rel="stylesheet" type="text/css"/>
    <!--fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,800italic,800,700italic,700,600,600italic' rel='stylesheet' type='text/css'>
    <!--/fonts-->
    <!-- 引入我的css -->
    <link rel="stylesheet" href="/staticfiles/main/css/AllSites.css">

    <link rel="stylesheet" href="/">
    <!--script-->
    <script src="/staticfiles/main/js/jquery-1.11.0.min.js"> </script>
    <script src="/staticfiles/main/js/modernizr.custom.97074.js"></script>
    <!-- bootstrap-js -->
    <script src="/staticfiles/main/js/bootstrap.js"></script>
    <!-- bootstrap-js -->
    <script type="text/javascript" src="/staticfiles/main/js/move-top.js"></script>
    <script type="text/javascript" src="/staticfiles/main/js/easing.js"></script>
    <!--/script-->
    <script>window.jQuery || document.write('<script src="/staticfiles/main/js/jquery-1.11.0.min.js"><\/script>')</script>
    <script type="text/javascript" src="/staticfiles/main/js/lightcase.js"></script>
    <script type="text/javascript" src="/staticfiles/main/js/index.js"></script>


    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
            });
        });
    </script>
    <!--/script-->
    <script src="/staticfiles/main/js/jquery.chocolat.js"></script>
    <link rel="stylesheet" href="/staticfiles/main/css/chocolat.css" type="text/css" media="screen">
    <!--light-box-files -->
    <script type="text/javascript">
        $(function() {
            $('.gallery a').Chocolat();
        });
    </script>

    <!--图片列表特效css-->
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/GridPhotos/css/default.css" />
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/GridPhotos/css/component.css" />
    <script src="/staticfiles/main/GridPhotos/js/modernizr.custom.js"></script>
    <%----%>
    <!--图片放大特效引入开始-->
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/css/htmleaf-demo.css">
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/css/lightcase.css">
    <style type="text/css">
        .showcase-list{
            padding: 1.5em;
            max-width: 80vw;
            margin: 0 auto;
        }
        .showcase-list a{
            position: relative;
            display: inline-block;
            text-align: left;
            margin: 20px auto;
            padding: 10px 20px;
            opacity: 0.8;
            -webkit-transition: opacity 0.3s;
            transition: opacity 0.3s;
            -webkit-backface-visibility: hidden;
        }
        .showcase-list a:hover,
        .showcase-list a:active {
            opacity: 1;
        }
        .showcase-list div.caption{
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%,-50%);
            -ms-transform: translate(-50%,-50%);
            -o-transform: translate(-50%,-50%);
            transform: translate(-50%,-50%);
            color: #fff;
        }
    </style>
    <!-- 图片放大特效引入结束-->
</head>
<body>
<div class="header" id="home">
    <nav class="navbar navbar-default">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><h1>Stunning</h1><br /><span>Traveling</span></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right margin-top cl-effect-2">
                    <li><a href="index.html"><span data-hover="Home">Home</span></a></li>
                    <li><a href="about.html"><span data-hover="About">About</span></a></li>
                    <li><a href="typography.html"><span data-hover="Shortcodes">Shortcodes</span></a></li>
                    <li><a href="gallery.html"><span data-hover="Gallery">Gallery</span></a></li>
                    <li><a href="contact.html"><span data-hover="Contact">Contact</span></a></li>
                </ul>
                <div class="clearfix"></div>
            </div><!-- /.navbar-collapse -->
            <div class="clearfix"></div>
        </div><!-- /.container-fluid -->
    </nav>

    <div class="header-banner">
        <!-- Top Navigation -->
        <section class="bgi banner5"><h2>全&nbsp;部&nbsp;图&nbsp;片</h2> </section>
        <!--gallery-->
        <div class="gallery" id="gallery">
            <div class="container">
                <script type="text/javascript" src="/staticfiles/main/js/jquery.hoverdir.js"></script>
                <script type="text/javascript">
                    $(function() {

                        $(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );

                    });
                </script>
                <div class="gallery-grids">
                    <section>
                        <!-- 排序的条件 -->
                        <div id="conditions">



                            </div>
                            <%--<ul id="da-thumbs" class="da-thumbs">--%>

                                <%--&lt;%&ndash;<c:forEach items="${spotsList}" var="spots">&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;<a href="" class="b-link-stripe b-animate-go  thickbox">&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;<img src="${spots.pictures[0].imgurl}" alt="" />&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;<div>&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;<h5>${spots.spotsName}</h5>&ndash;%&gt;--%>
                                                <%--&lt;%&ndash;<span>${spots.remark}</span>&ndash;%&gt;--%>
                                            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;</li&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
                            <%----%>
                            <%--</ul>--%>
                            <ul class="grid effect-8" id="grid">
                                <c:if test="${empty pictureList}">暂无图片</c:if>
                                <c:if test="${!empty pictureList}">
                                    <c:forEach items="${pictureList}" var="p">
                                        <li>
                                            <div class="htmleaf-container">
                                            <div class="showcase-list">

                                                <a href="${p.imgurl}" id="example8-2" class="showcase" data-rel="lightcase:scrollHor">
                                                    <img src="${p.imgurl}" width="300" height="200" alt=""/>
                                                </a>
                                            </div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </c:if>

                               <%-- <li><a href="http://drbl.in/fWPV"><img src="/staticfiles/main/GridPhotos/images/3.jpg"></a></li>
                                <li><a href="http://drbl.in/fWMT"><img src="/staticfiles/main/GridPhotos/images/4.jpg"></a></li>
                                <li><a href="http://drbl.in/fQdt"><img src="/staticfiles/main/GridPhotos/images/12.png"></a></li>
                                <li><a href="http://drbl.in/fHaa"><img src="/staticfiles/main/GridPhotos/images/13.png"></a></li>
                                <li><a href="http://drbl.in/gXMo"><img src="/staticfiles/main/GridPhotos/images/10.png"></a></li>
                                <li><a href="http://drbl.in/gXMn"><img src="/staticfiles/main/GridPhotos/images/9.jpg"></a></li>
                                <li><a href="http://drbl.in/fzYo"><img src="/staticfiles/main/GridPhotos/images/2.jpg"></a></li>
                                <li><a href="http://drbl.in/fARU"><img src="/staticfiles/main/GridPhotos/images/14.png"></a></li>
                                <li><a href="http://drbl.in/fGhI"><img src="/staticfiles/main/GridPhotos/images/5.jpg"></a></li>
                                <li><a href="http://drbl.in/fKCf"><img src="/staticfiles/main/GridPhotos/images/6.jpg"></a></li>
                                <li><a href="http://drbl.in/fLBG"><img src="/staticfiles/main/GridPhotos/images/7.jpg"></a></li>
                                <li><a href="http://drbl.in/fPEY"><img src="/staticfiles/main/GridPhotos/images/8.jpg"></a></li>
                                <li><a href="http://drbl.in/fWwG"><img src="/staticfiles/main/GridPhotos/images/9.jpg"></a></li>
                                <li><a href="http://drbl.in/fQdt"><img src="/staticfiles/main/GridPhotos/images/12.png"></a></li>
                                <li><a href="http://drbl.in/fHaa"><img src="/staticfiles/main/GridPhotos/images/13.png"></a></li>--%>

                            </ul>

                    </section>

                <!--script-->
            </div>
        </div>
        <!--//gallery-->
    </div>
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
</div>
<!--列表特效js-->
<script src="/staticfiles/main/GridPhotos/js/masonry.pkgd.min.js"></script>
<script src="/staticfiles/main/GridPhotos/js/imagesloaded.js"></script>
<script src="/staticfiles/main/GridPhotos/js/classie.js"></script>
<script src="/staticfiles/main/GridPhotos/js/AnimOnScroll.js"></script>

<script>
    new AnimOnScroll( document.getElementById( 'grid' ), {
        minDuration : 0.4,
        maxDuration : 0.6,
        viewportFactor : 0.2
    } );
</script>
<!---->
</body>

</html>
