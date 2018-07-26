<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctyphtml>
<html>
<head>
    <title>蜗牛旅行—景点详情</title>

    <%--引入网站的数据元--%>
    <%@include file="/WEB-INF/pages/main/home/base.jsp"%>

    <%--动态引入css和js资源--%>
    <%@include file="/WEB-INF/pages/main/home/baseconfs.jsp"%>


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
                        <h4>天气：晴天&nbsp;温度：26&#8451</h4>
                        <!--
                        <button type="button" class="btn btn-warning but1">Exceptional</button>
                        <p>Lorem ipsum simply a dummy text to format fonts and paragraphs,consectetuer adipiscing elit, sed diam </p> -->
                        <!-- <div id="search_div">
                            <input type="text" >
                        </div> -->
                        <div class="input-group">
                            <input type="text" class="form-control input-lg"><span class="input-group-addon btn btn-primary">搜索</span>
                        </div>
                    </div>
                    <div class="banner-forms">

                        <!-- <input class="name" type="text" name="name" value="Your name" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Your name';}">
                        <input class="nuber" type="text" name="Phone number" value="Phone Number" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Phone Number';}">
                        <input class="mail2" type="text" name="email" value="E-mail" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'E-mail';}"> -->
                        <div id="topDiscuss_Div">
                            <p>热点</p>
                            <ul>
                                <!-- 每行
                                格式：
                                留言13个汉字+3个点 -->
                                <li>留言一二三四五六七八九十一...</li>
                                <hr style="height:1px;border:none;border-top:1px dashed gray;margin:0 auto;" />
                                <li>留言一.....</li>
                                <hr style="height:1px;border:none;border-top:1px dashed gray;margin:0 auto;" />
                                <li>留言一.....</li>
                                <hr style="height:1px;border:none;border-top:1px dashed gray;margin:0 auto;" />
                                <li>留言一.....</li>
                                <hr style="height:1px;border:none;border-top:1px dashed gray;margin:0 auto;" />
                                <li>留言一.....</li>
                                <hr style="height:1px;border:none;border-top:1px dashed gray;margin:0 auto;" />
                            </ul>
                        </div>
                        <form>
                            <textarea onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Enter your text here...';}">Enter your text here...</textarea>
                            <button class="btn btn-info mrgn-can">Clear</button>
                            <button type="submit" class="btn btn-info mrgn-can">Submit</button>
                        </form>
                    </div>
                    <div class="clearfix"> </div>
            </section>
            <section class="col-3 ss-style-doublediagonal our-features">
                <div class="container">
                    <h2 id="TOP3">TOP 3</h2>
                    <p id="TOP3_p">时下最热景点前三甲</p>
                    <div class="col-md-4 column our-feat">
                        <!-- <h3>Format fonts lorem ipsum simply a dummy text to and paragraphs</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem.</p> -->
                        <div class="top3Container">
                            <a href="">
                                <img src="images/cc1.jpg" class="img-circle" alt="长城景点" width="250px" height="200px">
                                <span class="TOP3_p">NO.1&nbsp;&nbsp;长城</span>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 column our-feat">
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
                    </div>
                </div>
                <div class="clearfix"> </div>
            </section>
        </div>
    </div>
</div><div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
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

        <div id="AllSitesList_div">
            <h3 style="margin-left:250px;margin-bottom:20px">全部景点</h3>
            <ul class="AllSiteUl">
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>
                <li><a href="">故宫</a></li>

            </ul>
        </div>
    </div>
</div>
<div class="index-p">
    <div class="container">
        <div class="col-md-6 green-gird">
            <img src="images/gg-p.jpg"  alt=""/>
            <img src="images/gg-p1.jpg" alt="" />
        </div>
        <div class="col-md-6 index-ptext">
            <h3>小编热推</h3>
            <p>故宫又名紫禁城，是中国乃至世界上保存最完整，规模最大的木质结构古建筑群，被誉为“世界五大宫之首”。
                故宫由永乐帝朱棣下令建造，依据其布局与功用分为“外朝”与“内廷”两大部分。以乾清门为界，乾清门以南为外朝，以北为内廷。
                外朝也称为“前朝”，以太和殿(金銮殿)、中和殿、保和殿三大殿为中心，是封建皇帝行使权力、举行盛典的地方。
                内廷以乾清宫、交泰殿、坤宁宫后三宫为中心，以及东西两侧的东六宫和西六宫，是封建帝王与后妃居住之所，也就是俗称的“三宫六院”... </p>
            <a href="about.html">了解详情<i class="glyphicon glyphicon-arrow-right"> </i></a>
        </div>
    </div>
</div>
<div class="clearfix"> </div>
<div class="index-works">
    <div class="container">

        <div class="col">
            <div class="col2">
                <div class="col-md-4 col1">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="images/we.jpg" alt=""/>
                        <figcaption>
                            <h4>故宫</h4>
                            <p>故宫，“世界五大宫之首”</p>
                        </figcaption>
                    </figure>
                    <div class="clearfix"> </div>
                    <div class="effect-gird">
                        <h3>Sapien eros Integer dolore magna</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,
                            totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto.</p>
                    </div>
                </div>
                <div class="col-md-4 col1">
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
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="col next-col">
            <div class="col2">
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
                        <h3>Accusantium</h3>
                        <p>Natus error sit voluptatem accusantium doloremque. </p>
                    </div>
                </div>
                <div class="col-md-4 col1">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="images/we1.jpg" alt=""/>
                        <figcaption>
                            <h4>Enimet pulvinar posuere</h4>
                            <p>In sit amet sapien eros Integer dolore magna aliqua</p>
                        </figcaption>
                    </figure>
                    <div class="clearfix"> </div>
                    <div class="effect-gird">
                        <h3>Voluptatem</h3>
                        <p>Eaque ipsa quae ab illo inventore</p>
                    </div>
                </div>
                <div class="col-md-4 col1">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="images/we.jpg" alt=""/>
                        <figcaption>
                            <h4>Eros Integer</h4>
                            <p>In sit amet sapien eros Integer dolore magna aliqua</p>
                        </figcaption>
                    </figure>
                    <div class="clearfix"> </div>
                    <div class="effect-gird">
                        <h3>Dolore magna</h3>
                        <p>voluptatem accusan</p>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <a id="toAllBut" href="gallery.html" class="blue button">所&nbsp;有&nbsp;景&nbsp;点</a>
</div>
<script src="js/responsiveslides.min.js"></script>
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
                    <input type="text" value="Enter Your Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Enter Your Email';}"/>
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
