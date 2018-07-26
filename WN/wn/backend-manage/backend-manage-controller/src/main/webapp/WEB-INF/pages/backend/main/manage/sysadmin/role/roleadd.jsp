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
                            <li><i class="icon_genius">用户添加</i></li>
                        </ol>
                    </div>
                </div>

                <!--tab nav start-->

                <section class="panel">
                    <header class="panel-heading tab-bg-primary ">
                        <ul class="nav nav-tabs">
                            <li class="">
                                <a data-toggle="tab" href="#user">用户管理</a>
                            </li>
                            <li class="active">
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

                            <div id="user" class="tab-pane">

                                    <%--引入User列表--%>
                                    <%@include file="/WEB-INF/pages/backend/main/manage/sysadmin/userlist.jsp"%>

                                    </div>
                                <!-- 基础操作结束 -->

                            <!-- 角色管理界面开始 -->
                            <div id="role" class="tab-pane active">

                                <div class="tableBody">

                                    <div class="col-lg-12">
                                        <section class="panel">
                                            <header class="panel-heading title2">
                                                角色新增
                                            </header>
                                            <div class="panel-body">
                                                <div class="form">
                                                    <form class="form-validate form-horizontal" id="feedback_form" method="post" action="">
                                                        <div class="form-group ">
                                                            <label for="siteName" class="control-label col-lg-2">角色ID： <span class="required">*</span></label>
                                                            <div class="col-lg-10">
                                                                <input class="form-control" id="cname" name="roleId" maxlength="20" type="text" required />
                                                            </div>
                                                        </div>


                                                        <div class="form-group ">
                                                            <label for="tel" class="control-label col-lg-2">角色等级： <span class="required">*</span></label>
                                                            <div class="col-lg-10">
                                                                <input class="form-control " id="tel" type="text" name="name" maxlength="20" required />
                                                            </div>
                                                        </div>


                                                        <div class="form-group ">
                                                            <label for="addr" class="control-label col-lg-2">排序号： <span class="required">*</span></label>
                                                            <div class="col-lg-10">
                                                                <input class="form-control" id="addr" name="orderNo" minlength="5" type="number" required />
                                                            </div>
                                                        </div>


                                                        <div class="form-group ">
                                                            <label for="remark" class="control-label col-lg-2">说明： <span class="required">*</span></label>
                                                            <div class="col-lg-10">
                                                                <textarea class="form-control" id="remark" name="remark"  type="text" required ></textarea>
                                                            </div>
                                                        </div>


                                                        <div class="form-group">
                                                            <!--引入按钮提交js-->
                                                            <script src="/staticfiles/backend/js/submitAction.js"></script>
                                                            <div class="col-lg-offset-2 col-lg-10">
                                                                <button class="btn btn-primary addButs" type="button" onclick="formsubmit('/backend/sysadmin/role/save',2)">创建</button>
                                                                <button id="backBut" class="btn btn-default addButs" type="button">返回</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>

                                            </div>
                                        </section>
                                    </div>


                                </div>

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

