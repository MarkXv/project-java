<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>类别管理</title>

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

</head>
<body>


<!-- container section start -->
<section id="container" class="">

<%--引入顶部导航--%>
    <%@include file="/WEB-INF/pages/backend/base/nav.jsp"%>
    <!--sidebar start-->
   <%--引入侧边栏--%>
    <%@include file="/WEB-INF/pages/backend/base/sidebar.jsp"%>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!--overview start-->
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-laptop"></i> 景点管理</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                        <li><i class="fa fa-laptop"></i><a href="site.html">景点管理</a></li>
                        <li><i class="fa fa-laptop"></i><a href="site.html">类别管理</a></li>
                        <li><i class="icon_genius"></i>新增类别</li>
                    </ol>
                </div>
            </div>

            <!--tab nav start-->

            <section class="panel">
                <header class="panel-heading tab-bg-primary ">
                    <ul class="nav nav-tabs">
                        <li class="">
                            <a data-toggle="tab" href="#home">基础操作</a>
                        </li>
                        <li class="active">
                            <a data-toggle="tab" href="#category">类别</a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#discuss">留言</a>
                        </li>
                        <!-- <li class="">
                            <a data-toggle="tab" href="#contact">修改</a>
                        </li> -->
                    </ul>
                </header>
                <div class="panel-body">
                    <div class="tab-content">
                        <!-- 基础操作页面  开始           -->

                        <div id="home" class="tab-pane">
                            <%--引入景点列表--%>
                            <%@include file="/WEB-INF/pages/backend/main/manage/spots/spotslist.jsp"%>
                        </div>

                        <!-- 基础操作结束 -->

                        <!-- 类别管理开始 -->

                        <div id="category" class="tab-pane active">
                            <div class="tableBody">


                                <div class="col-lg-12">
                                    <section class="panel">
                                        <header class="panel-heading title2">
                                            修改类别
                                        </header>
                                        <div class="panel-body">
                                            <div class="form">
                                                <form class="form-validate form-horizontal" id="feedback_form" method="post" action="">
                                                    <div class="form-group " hidden="hidden">
                                                        <label for="siteName" class="control-label col-lg-2">id： <span class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="cname" name="categoryId" value="${category.categoryId}"  maxlength="20" type="text"  required />
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="siteName" class="control-label col-lg-2">名称： <span class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="cname" name="categoryName" value="${category.categoryName}"  maxlength="20" type="text"  required />
                                                        </div>
                                                    </div>



                                                    <div class="form-group ">
                                                        <label for="orderNo" class="control-label col-lg-2">排序号： <span class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="orderNo" name="orderNo"  value="${category.orderNo}" type="number"  required />
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="state" class="control-label col-lg-2">状态： <span class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <!-- <input class="form-control" id="state" name="state" minlength="5" type="text" required /> -->
                                                            <div class="switch-animate switch-o">
                                                                <input name="state" type="radio" value="0"  <c:if test="${category.state==0}">checked="checked"</c:if>/>停用
                                                                <input name="state" type="radio" value="1"  <c:if test="${category.state==1}">checked="checked"</c:if>/>启用
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <%--按钮点击事件--%>
                                                    <script src="/staticfiles/backend/js/submitAction.js"></script>
                                                    <div class="form-group">

                                                        <div class="col-lg-offset-2 col-lg-10">
                                                            <button class="btn btn-primary addButs" type="submit" onclick="formsubmit('/backend/category/updateCategory',2)">修改</button>
                                                            <button id="backBut"  class="btn btn-default addButs" type="button">返回</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>

                                        </div>
                                    </section>
                                </div>
                            </div>

                        </div>

                        <!--类别管理结束-->

                        <!-- 留言管理开始 -->
                        <div id="discuss" class="tab-pane">
                            <%--引入留言列表--%>
                            <%@include file="/WEB-INF/pages/backend/main/manage/spots/discusslist.jsp"%>
                        </div>
                        <!--留言管理结束-->


                    </div>
                </div>
            </section>

            <!--
                                                  <section class="panel">
                                      <div class="panel-body">
                                          <button data-original-title="Popovers in top" data-content="And here's some amazing content. It's very engaging. right?" data-placement="top" data-trigger="hover" class="btn btn-info popovers">Popover on Top</button>
                                          <button data-original-title="Popovers in bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-placement="bottom" data-trigger="hover" class="btn btn-info popovers">Bottom</button>
                                          <button data-original-title="Popovers in right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-placement="right" data-trigger="hover" class="btn btn-info popovers">Right</button>
                                          <button data-original-title="Popovers in left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-placement="left" data-trigger="hover" class="btn btn-info popovers">Left</button>
                                      </div>
                                  </section> -->


        </section>
    </section>
    <!--main content end-->
</section>
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

<!-- 列表的js -->
<!-- 引入js -->
<script type="text/javascript" src="/staticfiles/backend/js/site.js"/>


</body>
</html>

