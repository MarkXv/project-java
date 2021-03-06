<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

    <%--引入数据源参数--%>
    <%@include file="/WEB-INF/pages/backend/base/base.jsp"%>

        <link rel="shortcut icon" href="/staticfiles/backend/img/favicon.png">

    <title>蜗牛旅行后台管理系统</title>

    <%--引入css样式--%>
        <!-- Bootstrap CSS -->
        <link href="/staticfiles/backend/css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="/staticfiles/backend/css/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="/staticfiles/backend/css/elegant-icons-style.css" rel="stylesheet" />
        <link href="/staticfiles/backend/css/font-awesome.min.css" rel="stylesheet" />
        <!-- date picker -->

        <!-- color picker -->

        <!-- Custom styles -->
        <link href="/staticfiles/backend/css/style.css" rel="stylesheet">
        <link href="/staticfiles/backend/css/style-responsive.css" rel="stylesheet" />

        <link rel="stylesheet" href="/staticfiles/backend/css/site.css">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
        <!--[if lt IE 9]>
        <script src="/staticfiles/backend/js/html5shiv.js"></script>
        <script src="/staticfiles/backend/js/respond.min.js"></script>
        <script src="/staticfiles/backend/js/lte-ie7.js"></script>
        <![endif]-->


    <%--引入我的css--%>
        <link rel="stylesheet" href="/staticfiles/backend/css/mycss.css">


</head>

<body>
<!-- container section start -->
<section id="container" class="">

    <%--引入顶部导航栏--%>
    <%@include file="/WEB-INF/pages/backend/base/nav.jsp"%>

 <%--引入侧边栏--%>
    <%@include file="/WEB-INF/pages/backend/base/sidebar.jsp"%>
    <%--添加页面内容开始--%>

        <!--main content start-->
        <section id="main-content">
            <section class="wrapper">
                <!--overview start-->
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-laptop"></i> 系统管理</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="/backend">Home</a></li>
                            <li><i class="fa fa-laptop"></i><a href="/">系统管理</a></li>
                            <li><i class="icon_genius"><a href="/">用户管理</a></i></li>
                            <li><i class="icon_genius">查看详细信息</i></li>
                        </ol>
                    </div>
                </div>

                <!--tab nav start-->

                <section class="panel">
                    <header class="panel-heading tab-bg-primary ">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a data-toggle="tab" href="#user">用户管理</a>
                            </li>
                            <li class="">
                                <a data-toggle="tab" href="#role">角色管理</a>
                            </li>
                            <li class="">
                                <a data-toggle="tab" href="#module">模块管理</a>
                            </li>
                            <!-- <li class="">
                                <a data-toggle="tab" href="#contact">修改</a>
                            </li> -->
                        </ul>
                    </header>
                    <div class="panel-body">
                        <div class="tab-content">

                            <!-- 基础操作页面  开始           -->

                            <div id="user" class="tab-pane active">
                                <%--引入home按钮组--%>
                                <%@include file="/WEB-INF/pages/backend/base/buts/spots/homebuts.jsp"%>

                                <div class="tableBody">
                                    <div class="col-sm-6">
                                        <section class="panel">
                                            <header class="panel-heading">
                                                详细信息
                                            </header>
                                            <table class="tableView">

                                                <tbody>
                                                <tr>
                                                    <th></th><th></th><th></th><th></th>
                                                </tr>
                                                <tr  class="singleRow">
                                                    <td></td><td>用户名称：</td><td>${user.username}</td>  <td>性别:</td><td>${user.userInfo.gender}</td><td></td>
                                                </tr>
                                                <tr  class="dubleRow">
                                                    <td></td><td>真实姓名：</td><td>${user.userInfo.name}</td> <td>生日：</td><td>${user.userInfo.birthday}</td><td></td>
                                                </tr>
                                                <tr  class="singleRow">
                                                    <td></td><td>联系方式：</td> <td>${user.userInfo.telephone}</td><td>邮箱：</td><td>${user.userInfo.email}</td><td></td>
                                                </tr>


                                                </tbody>
                                            </table>
                                            <div class="form-group">
                                                <div class="col-lg-offset-2 col-lg-10">

                                                    <button id="backBut" class="btn btn-default addButs right" type="button">返回</button>
                                                </div>
                                            </div>
                                            <br/><br/><br/><br/>
                                        </section>
                                    </div>


                                </div>
                                    </div>
                                <!-- 基础操作结束 -->

                            <!-- 角色管理界面开始 -->
                            <div id="role" class="tab-pane">
                                <%--引入角色列表--%>
                                <%@include file="/WEB-INF/pages/backend/main/manage/sysadmin/rolelist.jsp"%>
                            </div>


                            <!-- 角色管理界面结束 -->


                            <!-- 模块管理开始 -->
                            <div id="module" class="tab-pane">
                                <%--引入模块列表--%>
                                <%@include file="/WEB-INF/pages/backend/main/manage/sysadmin/modulelist.jsp"%>
                            </div>
                            <!--模块管理结束-->
                            </div>
                        </div></section>




            </section>
        </section>
        <!--main content end-->

        <%--添加页面内容结束--%>


</section>



<%--景点管理的页面的js--%>
<!-- container section start -->
<!-- javascripts -->
<script src="/staticfiles/backend/js/jquery.js"></script>
<script src="/staticfiles/backend/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="/staticfiles/backend/js/jquery.scrollTo.min.js"></script>
<script src="/staticfiles/backend/js/jquery.nicescroll.js" type="text/javascript"></script>

<!-- jquery ui -->
<script src="/staticfiles/backend/js/jquery-ui-1.9.2.custom.min.js"></script>

<!--custom checkbox & radio-->
<script type="text/javascript" src="/staticfiles/backend/js/ga.js"></script>
<!--custom switch-->
<script src="/staticfiles/backend/js/bootstrap-switch.js"></script>
<!--custom tagsinput-->
<script src="/staticfiles/backend/js/jquery.tagsinput.js"></script>

<!-- colorpicker -->
<!-- tab容器的js -->
<!-- bootstrap-wysiwyg -->
<script src="/staticfiles/backend/js/jquery.hotkeys.js"></script>
<script src="/staticfiles/backend/js/bootstrap-wysiwyg.js"></script>
<script src="/staticfiles/backend/js/bootstrap-wysiwyg-custom.js"></script>
<!-- ck editor -->
<script type="text/javascript" src="/staticfiles/backend/assets/ckeditor/ckeditor.js"></script>
<!-- custom form component script for this page-->
<script src="/staticfiles/backend/js/form-component.js"></script>
<!-- custome script for all page -->
<script src="/staticfiles/backend/js/scripts.js"></script>


<!-- 引入site.js文件 -->
<!-- 先引入jQuery -->

<script type="text/javascript" src="/staticfiles/backend/js/site_common.js"></script>

</body>
</html>

