<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctypehtml>
<html>
<head>
    <title>蜗牛旅行</title>

    <%--引入网站的数据元--%>
    <%@include file="/WEB-INF/pages/main/home/base.jsp"%>

    <%--动态引入css和js资源--%>
    <%@include file="/WEB-INF/pages/main/home/baseconfs.jsp"%>

    <script src="/staticfiles/main/js/jquery-1.4.2.js"></script>

    <!-- 弹幕互动js-->
    <!-- 文字效果-->
    <script type="text/javascript" src="/staticfiles/main/talk/js/jquery.min.js"></script>
    <script type="text/javascript" src="/staticfiles/main/talk/js/dist/animatext.min.js"></script>
    <script type="text/javascript">


        //        $(".demo2").animatext({speed: 35,
        //            effect: 'flipInX',
        //            infinite: false
        //
        //        });
        
    </script>
    <script>


        $(function () {

            //输入框回车事件
//            var test= document.getElementById("test");
//            test.onkeydown = function(e){
//                send(e);
//            }
//            function send(e){
//                var code;
//                if (!e)
//                    var  e = window.event;
//                if (e.keyCode)
//                    code = e.keyCode;
//                else if (e.which)
//                    code = e.which;
//                if(code==13 && window.event){
//                    e.returnValue = false;
//                }else if(code==13){
//                    e.preventDefault();
//                }
//
//            }

            var num = 3;
            var cUUID = '${initUUID}';//初始化一个当期信息的uuid

            //定时执行
            setInterval(function () {
                get();
            },1000);

            function get() {
//                                              注意这里一定要设置发送的参数，这里默认是？后面的字符串，所以要手动拼接参数名
//                                        否则会报错，导致mvc参数获取不到，这里导致判断是否有最新信息时一直返回有
//                    $.get('http://localhost:8090/talk/get',UUID,function (result) {   错    !!!!!!!!!!
                $.get('http://10.8.36.87:8090/talk/get',"UUID="+cUUID,function (result) {
//                    var data = JSON.parse(result);
//                        alert(result)
                    if(result!=-1){
                        //有新消息
                        //处理数据
                        var datas = result.split(":");
                        //更新当前的最新信息UUID
                        cUUID = datas[0];
                        var newMessage = datas[1];
                        $("#talks").append("<li><span class='demo2'>"+newMessage+"</span></li>");
                        $("#talks").append("<hr style='height:1px;border:none;border-top:1px dashed gray;margin:0 auto;'/>");
                        $("#talks li:first").remove();
                        $("#talks hr:first").remove();
                        //删除其他li的demo2样式
//                            $("#talks li:last").siblings().attr("class","");
//                            $(".demo2").animatext({speed: 35,
//                                effect: 'flipInX',
//                                infinite: false
//                            });

//
//                            $(".demo2").animatext({speed: 35,
//                                effect: 'flipInX',
//                                infinite: false
//
//                            });
                    }

//                    $("#talks:last-child").remove();
//                    $("#talks:last-child").remove();
//                    alert(cUUID+","+datas[1]);
//                    num = num -1;
//                    if(num>0){
//                        get();
//                    }
                });
            }


        });
        function sendTalk() {
            var msg = "msg="+$("#lang").val();
            $.get('http://10.8.36.87:8090/talk/add',msg,function (result) {
//                alert("huouqu"+result);
            });

        }
    </script>
    <!-- 弹幕互动js结束-->
    <!-- 文字效果 -->
    <link rel="stylesheet" type="text/css" href="/staticfiles/main/talk/css/animate.min.css">
    <style>

    </style>


    <script>
        function findWeather() {
            var cityUrl = 'http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js';
            $.getScript(cityUrl, function(script, textStatus, jqXHR) {
                var citytq = remote_ip_info.city ;// 获取城市
                var url = "http://php.weather.sina.com.cn/iframe/index/w_cl.php?code=js&city=" + citytq + "&day=0&dfc=3";
                $.ajax({
                    url : url,
                    dataType : "script",
                    scriptCharset : "gbk",
                    success : function(data) {
                        var _w = window.SWther.w[citytq][0];
                        var _f= _w.f1+"_0.png";
                        if(new Date().getHours() > 17){
                            _f= _w.f2+"_1.png";
                        }
                        var img = "<img width='16px' height='16px' src='http://i2.sinaimg.cn/dy/main/weather/weatherplugin/wthIco/20_20/" +_f
                                + "' />";
                        var tq = citytq + " " + img + " " + _w.s1 + " " + _w.t1 + "℃～" + _w.t2 + "℃ " + _w.d1 + _w.p1 + "级";

                        $('#weather').html(tq);
                    }
                });
            });
        }
        findWeather();
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
            var but = document.getElementById("serchArg");
            var argvalue = but.value;
            window.location.href = "/serch/condition?arg=" + argvalue;
        }
    </script>
</head>
<body>
<div class="header" id="home">

    <div class="header-banner">

        <%--引入顶部导航栏--%>
        <%@include file="/WEB-INF/pages/main/home/nav.jsp"%>

        <!-- Top Navigation -->
        <div class="container page-seperator">
            <section class="color bgi">
                <div class="container">
                    <div class="banneer-text">

                        <!-- <div id="today_container">
             <div>
-                <img src="images/weather/weather_icon/2.png" alt="今日天气"/>
+                <img src="./images/weather/weather_icon/1.png" alt="今日天气"/>
             </div>
             <div>
-                <div class="main_info"><span class="info">城市</span>|<span class="info">2016-11-13</span>|<span class="info">星期天</span>|<span class="info">晴</span> </div>
-                <div class="more_info">今日温度：<span class="info">16-20℃</span>风力风向：<span class="info">西南风微风</span>湿度：<span class="info">54%</span>更新时间：<span class="info">11:00</span></div>
-                <div class="more_info">紫外线强度：<span class="info">中等</span>洗车指数：<span class="info">较适宜</span>空调指数：<span class="info">适宜</span>穿衣指数：<span class="info">较冷</span> </div>
+                <div class="main_info"><span class="info">城市</span>|<span class="info">201X-XX-XX</span>|<span class="info">星期X</span>|<span class="info">---</span> </div>
+                <div class="more_info">今日温度：<span class="info">-----</span>风力：<span class="info">-----</span>风向：<span class="info">-----</span>PM2.5：<span class="info">--</span></div>
+                <div class="more_info">紫外线强度：<span class="info">---</span>洗车指数：<span class="info">---</span>感冒指数：<span class="info">---</span>穿衣指数：<span class="info">---</span></div>
             </div>
         </div> -->
                        <h3 style="margin-top:30px">Hello&nbsp;&nbsp;World!</h3>
                        <h4 id="weather">天气：晴天&nbsp;温度：26&#8451</h4>
                        <!--
                        <button type="button" class="btn btn-warning but1">Exceptional</button>
                        <p>Lorem ipsum simply a dummy text to format fonts and paragraphs,consectetuer adipiscing elit, sed diam </p> -->
                        <!-- <div id="search_div">
                            <input type="text" >
                        </div> -->
                        <div class="input-group">
                            <input id="serchArg" type="text" class="form-control input-lg"><span   class="input-group-addon btn btn-primary"><a
                                href="javascript:;" onclick="serch()">搜索</a></span>
                        </div>
                    </div>
                    <div class="banner-forms">

                        <!-- <input class="name" type="text" name="name" value="Your name" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Your name';}">
                        <input class="nuber" type="text" name="Phone number" value="Phone Number" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Phone Number';}">
                        <input class="mail2" type="text" name="email" value="E-mail" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'E-mail';}"> -->
                        <div id="topDiscuss_Div">
                            <p style="font-size: 20px">互 动</p>
                            <div style="display: block;width: 100%;height:130px ;overflow: hidden;">
                                <ul id="talks">
                                    <!-- 每行
                                    格式：
                                    留言13个汉字+3个点 -->
                                    <li><span class="demo2">欢迎登陆蜗牛旅行...</span></li>
                                    <hr style="height:1px;border:none;border-top:1px dashed gray;margin:0 auto;" />
                                    <li><span class="demo2">马上加入互动...</span></li>
                                    <hr style="height:1px;border:none;border-top:1px dashed gray;margin:0 auto;" />
                                    <li><span class="demo2">...</span></li>
                                    <hr style="height:1px;border:none;border-top:1px dashed gray;margin:0 auto;" />
                                    <li><span class="demo2">...</span></li>
                                    <hr style="height:1px;border:none;border-top:1px dashed gray;margin:0 auto;" />
                                    <li><span class="demo2">...</span></li>
                                    <hr style="height:1px;border:none;border-top:1px dashed gray;margin:0 auto;" />
                                </ul>
                            </div>
                        </div>
                        <textarea id="lang" maxlength="10" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '大家好';}">马上加入互动</textarea>
                        <button class="btn btn-info mrgn-can" >Clear</button>
                        <button class="btn btn-info mrgn-can" onclick="sendTalk();">Submit</button>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </section>

            <section class="col-3 ss-style-doublediagonal our-features">
                <div id="top3Div" class="container">
                    <h2 id="TOP3">TOP 3</h2>
                    <p id="TOP3_p">时下最热景点前三甲</p>

	 		<!-- 跨域请求前三景点   待开发-->
            <!-- <script type="text/javascript" src="http://manage.wn.com/spots/findTop3?callback='findTop3'"/> -->

                    <c:forEach items="${SpotTop3List}" var="spot" varStatus="index">
                        <div class="col-md-4 column our-feat">
                            <!-- <h3>Format fonts lorem ipsum simply a dummy text to and paragraphs</h3>
                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.</p> -->
                            <div class="top3Container">
                                <a href="/toabout?spotsId=${spot.spotsId}">
                                    <img src="${spot.pictureList[0].imgurl}" class="img-circle" alt="" width="250px" height="200px">
                                    <span class="TOP3_p">NO.${index.index+1}&nbsp;&nbsp;${spot.spotsName}</span>
                                </a>
                            </div>
                        </div>
                    </c:forEach>




                  <%--  <div class="col-md-4 column our-feat">
                        <!-- <h3>Lorem ipsum simply a dummy text to format fonts and paragraphs</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.</p> -->
                        <div class="top3Container">
                            <a href="">
                                <img src="images/gg1.jpg" class="img-circle" alt="故宫景点" width="250px" height="200px">
                                <span class="TOP3_p">NO.2&nbsp;&nbsp;故宫</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 column our-feat">
                        <!-- <h3>A dummy text to format fonts and paragraphs lorem ipsum simply</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.</p> -->
                        <div class="top3Container">
                            <a href="">
                                <img src="images/yhy1.jpg" class="img-circle" alt="颐和园景点" width="250px" height="200px">
                                <span class="TOP3_p">NO.3&nbsp;&nbsp;颐和园</span>
                            </a>
                        </div>
                    </div>--%>
                </div>
                <div class="clearfix"> </div>
            </section>
        </div>
    </div>
</div><div class="copyrights">Collect from <a href="http://www.cssmoban.com/" ></a></div>
<div class="index-abt">
    <div id="allSitesContainer" class="container" style="margin:0 auto">

        <!-- <div class="col-md-3 index-abt1">
            <div class="abt-img"><i class="glyphicon glyphicon-share"> </i></div>
                <h3>Accusantium</h3>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.</p>
        </div> -->
        <!-- <div class="col-md-3 index-abt1">
            <div class="abt-img"><i class="glyphicon glyphicon-screenshot"> </i></div>
                <h3>Dolore magna</h3>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.</p>
        </div>
        <div class="col-md-3 index-abt1">
            <div class="abt-img"><i class="glyphicon glyphicon-btc"> </i></div>
                <h3>Eros Integer</h3>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.</p>
        </div> -->

			 <!-- 跨域请求所有景点链接   待   开发-->
            <!-- <script type="text/javascript" src="http://manage.wn.com/spots/queryAllName?callback='findAllSpotsName'"/> -->
      
        <div id="AllSitesList_div">
            <h3 style="margin-left:250px;margin-bottom:20px">全部景点</h3>
            <!-- 删除/开始-->
            <ul class="AllSiteUl">
                <!-- 删除/结束-->
                <c:forEach items="${SpotsAll}" var="spot">
                    <li><a href="">${spot.spotsName}</a></li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
<div class="index-p">
    <div class="container">
        <div class="col-md-6 green-gird">
            <img src="${wn}/img/1/1.jpg"  width="250px" height="300px" alt=""/>
            <img src="${wn}/img/1/2.jpg"  width="250px" height="300px" alt="" />
        </div>
        <div class="col-md-6 index-ptext">
            <h3>小编热推</h3>
            <p>故宫又名紫禁城，是中国乃至世界上保存最完整，规模最大的木质结构古建筑群，被誉为“世界五大宫之首”。
                故宫由永乐帝朱棣下令建造，依据其布局与功用分为“外朝”与“内廷”两大部分。以乾清门为界，乾清门以南为外朝，以北为内廷。
                外朝也称为“前朝”，以太和殿(金銮殿)、中和殿、保和殿三大殿为中心，是封建皇帝行使权力、举行盛典的地方。
                内廷以乾清宫、交泰殿、坤宁宫后三宫为中心，以及东西两侧的东六宫和西六宫，是封建帝王与后妃居住之所，也就是俗称的“三宫六院”... </p>
            <a href="/toabout?spotsId=1">了解详情<i class="glyphicon glyphicon-arrow-right"> </i></a>
        </div>
    </div>
</div>
<div class="clearfix"> </div>
<div class="index-works">
    <div class="container">

        <div class="col">
            <div id="top3Div" class="col2">
            
            <!-- 跨域请求所有景点前6 待开发-->
            <!-- <script type="text/javascript" src="http://manage.wn.com/spots/findTop6?callback='findSpots6'"/> -->
            
            
                 <c:forEach items="${spotsList}" var="spot" varStatus="index">

                    <div class="col-md-4 col1" >
                        <figure class="effect-bubba">
                            <img class="img-responsive" width="350px" height="233px" src="${spot.pictureList[0].imgurl}" alt=""/>
                            <figcaption>
                                <h4>${spot.spotsName}</h4>
                                <p>${spot.remark}</p>
                            </figcaption>
                        </figure>
                        <div class="clearfix"> </div>
                        <div class="effect-gird">
                            <h3><a href="toabout?spotsId=${spot.spotsId}">${spot.spotsName}</a></h3>
                            <p><a href="toabout?spotsId=${spot.spotsId}">${spot.remark}</a></p>
                        </div>
                    </div>
                </c:forEach> 
<%--                <div class="col-md-4 col1">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="images/we1.jpg" alt=""/>
                        <figcaption>
                            <h4>Enimet pulvinar posuere</h4>
                            <p>In sit amet sapien eros Integer dolore magna aliqua</p>
                        </figcaption>
                    </figure>
                    <div class="clearfix"> </div>
                    <div class="effect-gird">
                        <h3>Sapien eros Integer dolore magna</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,
                            totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta
                            sunt explicabo.</p>
                    </div>
                </div>
                <div class="col-md-4 col1">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="images/w32.jpg" alt=""/>
                        <figcaption>
                            <h4>Enimet pulvinar posuere</h4>
                            <p>In sit amet sapien eros Integer dolore magna aliqua</p>
                        </figcaption>
                    </figure>
                    <div class="clearfix"> </div>
                    <div class="effect-gird">
                        <h3>Sapien eros Integer dolore magna</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem .</p>
                    </div>
                </div>--%>

            </div>
            <div class="clearfix"> </div>
        </div>

    <a id="toAllBut" href="/gallery" class="blue button">所&nbsp;有&nbsp;景&nbsp;点</a>
</div>
<script src="/staticfiles/main/js/responsiveslides.min.js"></script>
<script>
    $(function () {
        $("#slider").responsiveSlides({
            auto: true,
            nav: true,
            speed: 500,
            namespace: "callbacks",
            pager: true,
        });
    });
</script>
<div class="slider">
    <div class="container">
        <div class="callbacks_container">
            <ul class="rslides" id="slider">
                <li>
                    <h3>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue</h3>
                </li>
                <li>
                    <h3>DenounceOn the other hand, we with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue</h3>
                </li>
                <li>
                    <h3>Righteous On the other hand, we denounce with indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue</h3>
                </li>
            </ul>
        </div>
    </div>
</div>

<!--footer-starts修改开始-->
<div class="footer">
    <div class="container">
        <div class="footer-main">
            <div class="col-md-3 footet-left">
                <h3>INFORMATION</h3>
                <ul>
                    <li><a href="/login"><span data-hover="Login">Login</span></a></li>
                    <li><a href="/"><span data-hover="Home">Home</span></a></li>
                    <li><a href="/tobackend"><span data-hover="backend">backend</span></a></li>
                    <li><a href="/spots"><span data-hover="Spots">Spots</span></a></li>
                    <li><a href="/aboutus"><span data-hover="about">about</span></a></li>
                </ul>
            </div>
            <div class="col-md-3 footet-left">
                <h3>CATEGORIES</h3>
                <ul>
                    <li><a href="#">Ancient capital</a></li>
                    <li><a href="#">World Heritage</a></li>
                    <li><a href="#">Characteristic Park</a></li>
                    <li><a href="#">Trend Beijing</a></li>
                    <li><a href="#">landmark building </a></li>
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
                    <input type="text" value="Enter Your Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Enter Your Email';}"/>
                    <input type="submit" value="" >
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="copy-rights">
            <p>Copyright &copy; 2017.Company name Snail studio.</p>
        </div>
    </div>
    <!---->
</div>
<!--修改完成-->
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
//        $().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>

    <script>
        $(".demo2").animatext({speed: 35,
            effect: 'flipInX',
            infinite: false
        });
    </script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!---->
    </div>
</body>
</html>
