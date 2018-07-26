<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%--整体的结构页面--%>
<!DOCTYPE html>
<html lang="en">
<head>

    <%--引入数据源参数--%>
    <%@include file="/WEB-INF/pages/backend/base/base.jsp"%>

        <link rel="shortcut icon" href="/staticfiles/backend/img/favicon.png">

    <title>蜗牛旅行后台管理系统</title>

    <%--引入css样式--%>
    <%@include file="/WEB-INF/pages/backend/base/baseconfs.jsp"%>
        <!-- Bootstrap CSS -->
        <link href="/staticfiles/backend/css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="/staticfiles/backend/css/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="/staticfiles/backend/css/elegant-icons-style.css" rel="stylesheet" />
        <link href="/staticfiles/backend/css/font-awesome.min.css" rel="stylesheet" />
        <!-- Custom styles -->
        <link href="/staticfiles/backend/css/style.css" rel="stylesheet">
        <link href="/staticfiles/backend/css/style-responsive.css" rel="stylesheet" />

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
        <!--[if lt IE 9]>
        <!--<script src="/staticfiles/backend/js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <script src="js/lte-ie7.js"></script>-->
        <![endif]-->

</head>

<body>
<!-- container section start -->
<section id="container" class="">


<%--引入顶部导航栏--%>
    <%@include file="/WEB-INF/pages/backend/base/nav.jsp"%>
<%--引入侧边栏--%>
    <%@include file="/WEB-INF/pages/backend/base/sidebar.jsp"%>
    <%--引入用户详情界面--%>
        <section id="main-content">
        <section class="wrapper">
            <!-- 页面头开始-->
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-user-md"></i>用户详情</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-user-md"></i>用户详情</li>
                    </ol>
                </div>
            </div>
            <!--页面头结束 -->
            <div class="row">
                <!-- profile-widget -->
                <div class="col-lg-12">
                    <div class="profile-widget profile-widget-info">
                        <div class="panel-body">
                            <div class="col-lg-2 col-sm-2">
                                <h4>${user.username}</h4>
                                <div class="follow-ava">
                                    <img src="/staticfiles/backend/img/profile-widget-avatar.jpg" alt="">
                                </div>
                                <h6>头像</h6>
                            </div>
                            <div class="col-lg-4 col-sm-4 follow-info">
                                <p>大家好我是${user.username}，一名管理员。</p>
                                <p>邮箱：${user.userInfo.email}</p>

                            </div>
                            <div class="col-lg-2 col-sm-6 follow-info weather-category">
                                <ul>
                                    <li class="active">

                                        <i class="fa fa-comments fa-2x"> </i><br>

                                        灵山多秀色，空水共氤氲。
                                    </li>

                                </ul>
                            </div>
                            <div class="col-lg-2 col-sm-6 follow-info weather-category">
                                <ul>
                                    <li class="active">

                                        <i class="fa fa-bell fa-2x"> </i><br>

                                        灵山多秀色，空水共氤氲。
                                    </li>

                                </ul>
                            </div>
                            <div class="col-lg-2 col-sm-6 follow-info weather-category">
                                <ul>
                                    <li class="active">

                                        <i class="fa fa-tachometer fa-2x"> </i><br>

                                        灵山多秀色，空水共氤氲。
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- page start-->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading tab-bg-info">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a data-toggle="tab" href="#recent-activity">
                                        <i class="icon-home"></i>
                                        留言
                                    </a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#profile">
                                        <i class="icon-user"></i>
                                        简况
                                    </a>
                                </li>
                                <li class="">
                                    <a data-toggle="tab" href="#edit-profile">
                                        <i class="icon-envelope"></i>
                                        设置
                                    </a>
                                </li>
                            </ul>
                        </header>
                        <div class="panel-body">
                            <div class="tab-content">
                                <div id="recent-activity" class="tab-pane active">
                                    <div class="profile-activity">
                                        <div class="act-time">
                                            <div class="activity-body act-in">
                                                <span class="arrow"></span>
                                                <div class="text">
                                                    <a href="#" class="activity-img"><img class="avatar" src="/staticfiles/backend/img/chat-avatar.jpg" alt=""></a>
                                                    <p class="attribution"><a href="#">${user.username}</a> 2017.10.23</p>
                                                    <p>不想~不想长大~就是不想长大嘛</p>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <!-- profile -->
                                <div id="profile" class="tab-pane">
                                    <section class="panel">
                                        <div class="bio-graph-heading">
                                            我是一个活泼开朗、热心助人的宝宝。我热爱读书、听音乐，体育，唱歌等等。如果你也和我一样喜欢这些，欢迎和我一起交流啊。
                                        </div>
                                        <div class="panel-body bio-graph-info">
                                            <h1>基本信息</h1>
                                            <div class="row">
                                                <div class="bio-row">
                                                    <p><span>用户名：</span>${user.username} </p>
                                                </div>
                                                <div class="bio-row">
                                                    <p><span> 真实姓名：</span>${user.userInfo.name}</p>
                                                </div>
                                                <div class="bio-row">
                                                    <p><span>性别：</span>${user.userInfo.gender}</p>
                                                </div>
                                                <div class="bio-row">
                                                    <p><span>生日：</span>${user.userInfo.birthday}</p>
                                                </div>
                                                <div class="bio-row">
                                                    <p><span>国籍：</span>中国</p>
                                                </div>
                                                <div class="bio-row">
                                                    <p><span>邮箱：</span>${user.userInfo.email}</p>
                                                </div>
                                                <div class="bio-row">
                                                    <p><span>电话：</span>${user.userInfo.telephone}</p>
                                                </div>

                                            </div>
                                        </div>
                                    </section>
                                    <section>
                                        <div class="row">
                                        </div>
                                    </section>
                                </div>
                                <!-- edit-profile -->
                                <div id="edit-profile" class="tab-pane">
                                    <section class="panel">
                                        <div class="panel-body bio-graph-info">
                                            <h1> 设置信息</h1>
                                            <form class="form-horizontal" role="form">
                                                <div class="form-group " HIDDEN="hidden">
                                                    <label for="siteName" class="control-label col-lg-2">用户ID： <span class="required">*</span></label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control" id="cname1" name="userId" value="${user.userId}" maxlength="20" type="text" required />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="siteName" class="control-label col-lg-2">用户名称： <span class="required">*</span></label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control" id="cname" name="username" value="${user.username}" maxlength="20" type="text" required />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="tel" class="control-label col-lg-2">密码： <span class="required">*</span></label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control " id="tel" type="tel" name="password" maxlength="20" required />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="orderNo" class="control-label col-lg-2">确认密码： <span class="required">*</span></label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control" id="orderNo" name="orderNo" type="number" required />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="addr" class="control-label col-lg-2">性别： <span class="required">*</span></label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control" id="addr" name="userInfo.gender" value="${user.userInfo.gender}" minlength="5" type="text" required />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="station1" class="control-label col-lg-2">真实姓名： <span class="required">*</span></label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control" id="station1" name="userInfo.name" value="${user.userInfo.name}" type="text" required />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="station2" class="control-label col-lg-2">身份证号： <span class="required">*</span></label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control" id="station2" name="userInfo.cardNo" value="${user.userInfo.cardNo}" type="text" required />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="website" class="control-label col-lg-2">生日：<span class="required">*</span></label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control " id="website" type="url" name="userInfo.birthday" value="${user.userInfo.birthday}" maxlength="25" placeholder="格式要求：http://+" required/>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="station2" class="control-label col-lg-2">邮箱： <span class="required">*</span></label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control" id="email" name="userInfo.email" value="${user.userInfo.email}" type="text" required />
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="ticket" class="control-label col-lg-2">联系方式： <span class="required">*</span></label>
                                                    <div class="col-lg-10">
                                                        <textarea class="form-control" id="ticket" name="userInfo.telephone"  minlength="5" type="text" required >${user.userInfo.telephone}</textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <!--引入按钮提交js-->
                                                    <script src="/staticfiles/backend/js/submitAction.js"></script>
                                                    <div class="col-lg-offset-2 col-lg-10">
                                                        <button class="btn btn-primary addButs" type="submit" onclick="formsubmit('/backend/sysadmin/user/userupdate',1)">保存</button>

                                                    </div>
                                                    </div>
                                            </form>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>

            <!-- page end-->
        </section>
    </section>
    <%--引入用户详情界面--%>
</section>
<!-- container section start -->

<!-- javascripts -->
<script src="/staticfiles/backend/js/jquery.js"></script>
<script src="/staticfiles/backend/js/jquery-ui-1.10.4.min.js"></script>
<script src="/staticfiles/backend/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/staticfiles/backend/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="/staticfiles/backend/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="/staticfiles/backend/js/jquery.scrollTo.min.js"></script>
<script src="/staticfiles/backend/js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="/staticfiles/backend/assets/jquery-knob/js/jquery.knob.js"></script>
<script src="/staticfiles/backend/js/jquery.sparkline.js" type="text/javascript"></script>
<script src="/staticfiles/backend/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="/staticfiles/backend/js/owl.carousel.js" ></script>
<!-- jQuery full calendar -->
<script src="/staticfiles/backend/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
<script src="/staticfiles/backend/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="/staticfiles/backend/js/calendar-custom.js"></script>
<script src="/staticfiles/backend/js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="/staticfiles/backend/js/jquery.customSelect.min.js" ></script>
<script src="/staticfiles/backend/assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="/staticfiles/backend/js/scripts.js"></script>
<!-- custom script for this page-->
<script src="/staticfiles/backend/js/sparkline-chart.js"></script>
<script src="/staticfiles/backend/js/easy-pie-chart.js"></script>
<script src="/staticfiles/backend/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/staticfiles/backend/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="/staticfiles/backend/js/xcharts.min.js"></script>
<script src="/staticfiles/backend/js/jquery.autosize.min.js"></script>
<script src="/staticfiles/backend/js/jquery.placeholder.min.js"></script>
<script src="/staticfiles/backend/js/gdp-data.js"></script>
<script src="/staticfiles/backend/js/morris.min.js"></script>
<script src="/staticfiles/backend/js/sparklines.js"></script>
<script src="/staticfiles/backend/js/charts.js"></script>
<script src="/staticfiles/backend/js/jquery.slimscroll.min.js"></script>
<script>

    //knob
    $(function() {
        $(".knob").knob({
            'draw' : function () {
                $(this.i).val(this.cv + '%')
            }
        })
    });

    //carousel
    $(document).ready(function() {
        $("#owl-slider").owlCarousel({
            navigation : true,
            slideSpeed : 300,
            paginationSpeed : 400,
            singleItem : true

        });
    });

    //custom select box

    $(function(){
        $('select.styled').customSelect();
    });

    /* ---------- Map ---------- */
    $(function(){
        $('#map').vectorMap({
            map: 'world_mill_en',
            series: {
                regions: [{
                    values: gdpData,
                    scale: ['#000', '#000'],
                    normalizeFunction: 'polynomial'
                }]
            },
            backgroundColor: '#eef3f7',
            onLabelShow: function(e, el, code){
                el.html(el.html()+' (GDP - '+gdpData[code]+')');
            }
        });
    });



</script>

</body>
</html>

