<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>蜗牛—全部景点</title>

    <!-- 类别css -->
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/test/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/test/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/test/css/pater.css" />
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/test/css/component.css" />

    <!-- 列表js-->
    <script>
        document.documentElement.className = 'js';
    </script>

    <%--网站导航和banner的css和js--%>
    <%--<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>--%>
    <!--flexslider-css-->
    <!--bootstrap-->
    <link href="/staticfiles/main/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--coustom css-->
    <link href="/staticfiles/main/css/style.css" rel="stylesheet" type="text/css"/>
    <!--fonts-->
    <%--<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,800italic,800,700italic,700,600,600italic' rel='stylesheet' type='text/css'>--%>
    <!--/fonts-->
    <!-- 引入我的css -->
    <link rel="stylesheet" href="/staticfiles/main/css/AllSites.css">

    <link rel="stylesheet" href="/">
    <!--script-->
    <script src="/staticfiles/main/js/jquery.min.js"> </script>
    <script src="/staticfiles/main/js/modernizr.custom.97074.js"></script>
    <!-- bootstrap-js -->
    <script src="/staticfiles/main/js/bootstrap.js"></script>
    <!-- bootstrap-js -->
    <script type="text/javascript" src="/staticfiles/main/js/move-top.js"></script>
    <script type="text/javascript" src="/staticfiles/main/js/easing.js"></script>
    <!--/script-->
    <%--<script type="text/javascript">--%>
        <%--jQuery(document).ready(function($) {--%>
            <%--$(".scroll").click(function(event){--%>
                <%--event.preventDefault();--%>
                <%--$('html,body').animate({scrollTop:$(this.hash).offset().top},900);--%>
            <%--});--%>
        <%--});--%>
    <%--</script>--%>
    <!--/script-->
    <script src="/staticfiles/main/js/jquery.chocolat.js"></script>
    <link rel="stylesheet" href="/staticfiles/main/css/chocolat.css" type="text/css" media="screen">
    <!--light-box-files -->
    <script type="text/javascript">
//        $(function() {
//            $('.gallery a').Chocolat();
//        });
    </script>
    <%--搜索样式--%>
    <style>
        #serchBut:hover {
            color: white;
        }
    </style>
    <%--搜索js--%>
    <script>
        function serch() {
            var but = document.getElementById("serch");
            var argvalue = but.value;
            window.location.href = "/serch/condition?arg=" + argvalue;
        }
    </script>
    
    <!-- 发起获取所有景点的jsonp请求  待开发-->
    <!-- <script type="text/javascript" src="http://manage.wn.com/spots/getAll?callback='getAllSpots'" /> -->

</head>
<body class="loading">
<%--顶部--%>
<div class="header" id="home">
    <%--引入导航栏--%>
    <%@include file="/WEB-INF/pages/main/home/nav.jsp"%>

    <div class="header-banner">
        <!-- Top Navigation -->
        <section class="bgi banner5"><h2>全&nbsp;部&nbsp;景&nbsp;点</h2> </section>
        <!--gallery-->
        <div class="gallery" id="gallery">
            <div class="container">
                <script type="text/javascript" src="/staticfiles/main/js/jquery.hoverdir.js"></script>
                <script type="text/javascript">
//                    $(function() {
//
//                        $(' #da-thumbs > li ').each( function() { $(this).hoverdir(); } );
//
//                    });
                </script>
                <div class="gallery-grids" style="margin-left: 10%">
                    <section style="width:100%;height:5%">
                        <!-- 排序的条件 -->
                        <div id="conditions">
                            <h6>排序条件:</h6>
                            <ul class="conditionsUL">
                                <li><a href="">默认</a></li>
                                <li><a href="">热度</a></li>
                                <li><a href="">名称先后</a></li>
                                <li>&nbsp;</li>
                                <li>&nbsp;</li>
                                <li>&nbsp;</li>
                                <li>&nbsp;</li>
                                <li>&nbsp;</li>
                                <li>&nbsp;</li>
                                <li>&nbsp;</li>


                            </ul>
                            <div id="serchBut">
                                <div class="input-group" style="width: 75%">
                                    <input id="serch" type="text" class="form-control input-lg" placeholder="故 宫">
                                    <span  class="input-group-addon btn btn-primary" ><a
                                          href="javascript:;" onclick="serch()" class="serchButA">搜索</a>
                                </div>
                            </div>


                        </div></section>
                </div>
                <!--script-->
            </div>
        </div>
        <!--//gallery-->
    </div>
</div>

<%--列表--%>
<main style="min-width: 752px;overflow: scroll">
    <section class="content content--c1">

        <div class="mycontainer">
            <div class="mycontainer main">
                <c:forEach items="${spotsList}" var="spots" varStatus="index">
                    <div class="infoContainer">
                        <div class="left">
                            <a href="#" class="tilter tilter--1">
                                <figure class="tilter__figure">
                                    <img class="tilter__image" src="${spots.pictureList[0].imgurl}" alt="暂无图片" />
                                    <div class="tilter__deco tilter__deco--shine"></div>
                                    <figcaption class="tilter__caption mytitile">
                                        <span class="tilter__title">${spots.spotsName}</span>
                                        <br/>
                                        <p class="tilter__description"> </p>
                                    </figcaption>
                                    <svg class="tilter__deco tilter__deco--lines" viewBox="0 0 300 415">
                                        <path d="M20.5,20.5h260v375h-260V20.5z" />
                                    </svg>
                                </figure>
                            </a>
                        </div>
                        <div class="right">
                            <div class="middleInfo">
                                <span class="leftInfo">
                                    <a href="/toabout?spotsId=${spots.spotsId}">${spots.spotsName}</a></span>

                                <span class="rightInfo">4564条评论</span>
                                <br/>
                                <p><a href="/toabout?spotsId=${spots.spotsId}">${spots.remark}</a></p>
                                <span class="rightInfo">4545人关注</span>
                                <span class="rightInfo">120 赞</span>
                                <!-- <ol class="grid2">
                                    <li class="grid__item2">
                <button class="icobutton2 icobutton--thumbs-up2"><span class="fa2 fa-thumbs-up2"></span></button>
            </li>
                                </ol> -->
                            </div>
                        </div>
                    </div>

                </c:forEach>



                <%--<a href="#" class="tilter tilter--1">--%>
                    <%--<figure class="tilter__figure">--%>
                        <%--<img class="tilter__image" src="img/2.jpg" alt="img02" />--%>
                        <%--<div class="tilter__deco tilter__deco--shine"><div></div></div>--%>
                        <%--<figcaption class="tilter__caption">--%>
                            <%--<h3 class="tilter__title">Walter Anderson</h3>--%>
                            <%--<p class="tilter__description">Stockholm</p>--%>
                        <%--</figcaption>--%>
                        <%--<svg class="tilter__deco tilter__deco--lines" viewBox="0 0 300 415">--%>
                            <%--<path d="M20.5,20.5h260v375h-260V20.5z" />--%>
                        <%--</svg>--%>
                    <%--</figure>--%>
                <%--</a>--%>
            </div>
        </div>
        <div style="text-align:center">
            <ul class="pagination" >
                <li><a href="/laquo">&laquo;首页</a></li>
                <c:forEach items="${countList}" var="each">
                    <li><a href="/count?count=${each}">${each}</a></li>
                </c:forEach>
                <li><a href="/raquo">&raquo;尾页</a></li>
            </ul>
        </div>

    </section>

    </section>


</main>
<script src="/staticfiles/main/test/js/imagesloaded.pkgd.min.js"></script>
<script src="/staticfiles/main/test/js/anime.min.js"></script>
<script src="/staticfiles/main/test/js/main.js"></script>
<script>
    (function() {
        var tiltSettings = [
            {},
            {
                movement: {
                    imgWrapper : {
                        translation : {x: 10, y: 10, z: 30},
                        rotation : {x: 0, y: -10, z: 0},
                        reverseAnimation : {duration : 200, easing : 'easeOutQuad'}
                    },
                    lines : {
                        translation : {x: 10, y: 10, z: [0,70]},
                        rotation : {x: 0, y: 0, z: -2},
                        reverseAnimation : {duration : 2000, easing : 'easeOutExpo'}
                    },
                    caption : {
                        rotation : {x: 0, y: 0, z: 2},
                        reverseAnimation : {duration : 200, easing : 'easeOutQuad'}
                    },
                    overlay : {
                        translation : {x: 10, y: -10, z: 0},
                        rotation : {x: 0, y: 0, z: 2},
                        reverseAnimation : {duration : 2000, easing : 'easeOutExpo'}
                    },
                    shine : {
                        translation : {x: 100, y: 100, z: 0},
                        reverseAnimation : {duration : 200, easing : 'easeOutQuad'}
                    }
                }
            },
            {
                movement: {
                    imgWrapper : {
                        rotation : {x: -5, y: 10, z: 0},
                        reverseAnimation : {duration : 900, easing : 'easeOutCubic'}
                    },
                    caption : {
                        translation : {x: 30, y: 30, z: [0,40]},
                        rotation : {x: [0,15], y: 0, z: 0},
                        reverseAnimation : {duration : 1200, easing : 'easeOutExpo'}
                    },
                    overlay : {
                        translation : {x: 10, y: 10, z: [0,20]},
                        reverseAnimation : {duration : 1000, easing : 'easeOutExpo'}
                    },
                    shine : {
                        translation : {x: 100, y: 100, z: 0},
                        reverseAnimation : {duration : 900, easing : 'easeOutCubic'}
                    }
                }
            },
            {
                movement: {
                    imgWrapper : {
                        rotation : {x: -5, y: 10, z: 0},
                        reverseAnimation : {duration : 50, easing : 'easeOutQuad'}
                    },
                    caption : {
                        translation : {x: 20, y: 20, z: 0},
                        reverseAnimation : {duration : 200, easing : 'easeOutQuad'}
                    },
                    overlay : {
                        translation : {x: 5, y: -5, z: 0},
                        rotation : {x: 0, y: 0, z: 6},
                        reverseAnimation : {duration : 1000, easing : 'easeOutQuad'}
                    },
                    shine : {
                        translation : {x: 50, y: 50, z: 0},
                        reverseAnimation : {duration : 50, easing : 'easeOutQuad'}
                    }
                }
            },
            {
                movement: {
                    imgWrapper : {
                        translation : {x: 0, y: -8, z: 0},
                        rotation : {x: 3, y: 3, z: 0},
                        reverseAnimation : {duration : 1200, easing : 'easeOutExpo'}
                    },
                    lines : {
                        translation : {x: 15, y: 15, z: [0,15]},
                        reverseAnimation : {duration : 1200, easing : 'easeOutExpo'}
                    },
                    overlay : {
                        translation : {x: 0, y: 8, z: 0},
                        reverseAnimation : {duration : 600, easing : 'easeOutExpo'}
                    },
                    caption : {
                        translation : {x: 10, y: -15, z: 0},
                        reverseAnimation : {duration : 900, easing : 'easeOutExpo'}
                    },
                    shine : {
                        translation : {x: 50, y: 50, z: 0},
                        reverseAnimation : {duration : 1200, easing : 'easeOutExpo'}
                    }
                }
            },
            {
                movement: {
                    lines : {
                        translation : {x: -5, y: 5, z: 0},
                        reverseAnimation : {duration : 1000, easing : 'easeOutExpo'}
                    },
                    caption : {
                        translation : {x: 15, y: 15, z: 0},
                        rotation : {x: 0, y: 0, z: 3},
                        reverseAnimation : {duration : 1500, easing : 'easeOutElastic', elasticity : 700}
                    },
                    overlay : {
                        translation : {x: 15, y: -15, z: 0},
                        reverseAnimation : {duration : 500,easing : 'easeOutExpo'}
                    },
                    shine : {
                        translation : {x: 50, y: 50, z: 0},
                        reverseAnimation : {duration : 500, easing : 'easeOutExpo'}
                    }
                }
            },
            {
                movement: {
                    imgWrapper : {
                        translation : {x: 5, y: 5, z: 0},
                        reverseAnimation : {duration : 800, easing : 'easeOutQuart'}
                    },
                    caption : {
                        translation : {x: 10, y: 10, z: [0,50]},
                        reverseAnimation : {duration : 1000, easing : 'easeOutQuart'}
                    },
                    shine : {
                        translation : {x: 50, y: 50, z: 0},
                        reverseAnimation : {duration : 800, easing : 'easeOutQuart'}
                    }
                }
            },
            {
                movement: {
                    lines : {
                        translation : {x: 40, y: 40, z: 0},
                        reverseAnimation : {duration : 1500, easing : 'easeOutElastic'}
                    },
                    caption : {
                        translation : {x: 20, y: 20, z: 0},
                        rotation : {x: 0, y: 0, z: -5},
                        reverseAnimation : {duration : 1000, easing : 'easeOutExpo'}
                    },
                    overlay : {
                        translation : {x: -30, y: -30, z: 0},
                        rotation : {x: 0, y: 0, z: 3},
                        reverseAnimation : {duration : 750, easing : 'easeOutExpo'}
                    },
                    shine : {
                        translation : {x: 100, y: 100, z: 0},
                        reverseAnimation : {duration : 750, easing : 'easeOutExpo'}
                    }
                }
            }];

        function init() {
            var idx = 0;
            [].slice.call(document.querySelectorAll('a.tilter')).forEach(function(el, pos) {
                idx = pos%2 === 0 ? idx+1 : idx;
                new TiltFx(el, tiltSettings[idx-1]);
            });
        }

        // Preload all images.
        imagesLoaded(document.querySelector('main'), function() {
            document.body.classList.remove('loading');
            init();
        });

        // REMOVE THIS!
        // For Demo purposes only. Prevent the click event.
        [].slice.call(document.querySelectorAll('a[href="#"]')).forEach(function(el) {
            el.addEventListener('click', function(ev) { ev.preventDefault(); });
        });

        var pater = document.querySelector('.pater'),
                paterSVG = pater.querySelector('.pater__svg'),
                pathEl = paterSVG.querySelector('path'),
                paths = {default: pathEl.getAttribute('d'), active: paterSVG.getAttribute('data-path-hover')};

        pater.addEventListener('mouseenter', function() {
            anime.remove(pathEl);
            anime({
                targets: pathEl,
                d: paths.active,
                duration: 400,
                easing: 'easeOutQuad'
            });
        });

        pater.addEventListener('mouseleave', function() {
            anime.remove(pathEl);
            anime({
                targets: pathEl,
                d: paths.default,
                duration: 400,
                easing: 'easeOutExpo'
            });
        });
    })();
</script>
</body>
</html>