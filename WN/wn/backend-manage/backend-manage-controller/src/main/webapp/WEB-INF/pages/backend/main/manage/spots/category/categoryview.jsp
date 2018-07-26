<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <link href="/staticfiles/backend/css/elegant-icons-style.css" rel="stylesheet"/>
    <link href="/staticfiles/backend/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- date picker -->

    <!-- color picker -->

    <!-- Custom styles -->
    <link href="/staticfiles/backend/css/style.css" rel="stylesheet">
    <link href="/staticfiles/backend/css/style-responsive.css" rel="stylesheet"/>

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
    <%@include file="/WEB-INF/pages/backend/base/nav.jsp" %>
    <!--sidebar start-->
    <%--引入侧边栏--%>
    <%@include file="/WEB-INF/pages/backend/base/sidebar.jsp" %>
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
                        <li><i class="fa fa-laptop"></i><a href="/spots/index">景点管理</a></li>
                        <li><i class="icon_genius"></i><a href="">类别管理</a></li>
                        <li><i class="icon_genius"></i>查看信息</li>
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
                            <%@include file="/WEB-INF/pages/backend/main/manage/spots/spotslist.jsp" %>
                        </div>

                        <!-- 基础操作结束 -->

                        <!-- 类别管理开始 -->

                        <div id="category" class="tab-pane active">

                            <div class="tableBody">
                                <div class="col-sm-6">
                                    <section class="panel">
                                        <header class="panel-heading">
                                            详细信息
                                        </header>
                                        <table class="tableViewCategory">
                                            <tbody>

                                            <tr class="singleRow">
                                                <td></td>
                                                <td>类别号：</td>
                                                <td>${category.categoryId}</td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td colspan="2">名称：</td>
                                                <td>${category.categoryName}</td>
                                                <td></td>
                                            </tr>

                                            <tr class="dubleRow">
                                                <td></td>
                                                <td>状态：</td>
                                                <td>
                                                    <c:if test="${category.state==0}">启用</c:if>
                                                    <c:if test="${category.state==1}">停用</c:if>
                                                </td>
                                                <td></td>

                                            </tr>

                                            </tbody>
                                        </table>
                                        <div class="form-group">
                                            <div class="col-lg-offset-2 col-lg-10">
                                                <button id="backBut" class="btn btn-default addButs right"
                                                        type="button">返回
                                                </button>
                                            </div>
                                        </div>
                                        <br/><br/><br/><br/>
                                    </section>
                                </div>

                            </div>

                        </div>

                        <!--类别管理结束-->

                        <!-- 留言管理开始 -->
                        <div id="discuss" class="tab-pane">
                            <%--引入留言列表--%>
                            <%@include file="/WEB-INF/pages/backend/main/manage/spots/discusslist.jsp" %>
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
<script type="text/javascript" src="/staticfiles/backend/js/site_common.js"/>


</body>
</html>

