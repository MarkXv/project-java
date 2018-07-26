<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%--整体的结构页面--%>
<!DOCTYPE html>
<html lang="en">
<head>

    <%--引入数据源参数--%>
    <%@include file="/WEB-INF/pages/backend/base/base.jsp" %>

    <link rel="shortcut icon" href="/staticfiles/backend/img/favicon.png">

    <title>蜗牛旅行后台管理系统</title>

    <%--引入css样式--%>
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


<!-- container section start -->
<section id="container" class="">

    <%--引入顶部导航栏--%>
    <%@include file="/WEB-INF/pages/backend/base/nav.jsp" %>

    <%--引入侧边栏--%>
    <%@include file="/WEB-INF/pages/backend/base/sidebar.jsp" %>

    <%--查看的页面内容--%>

    <%--开始--%>


    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!--overview start-->
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-laptop"></i> 景点管理</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                        <li><i class="fa fa-laptop"></i>景点管理</li>
                    </ol>
                </div>
            </div>

            <!--tab nav start-->

            <section class="panel">
                <header class="panel-heading tab-bg-primary ">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a data-toggle="tab" href="#home">基础操作</a>
                        </li>
                        <li class="">
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

                        <div id="home" class="tab-pane active">
                            <div class="tableBody">

                                <div class="col-sm-6">
                                    <section class="panel">
                                        <header class="panel-heading">
                                            详细信息
                                        </header>
                                        <table class="tableView">

                                            <tbody>
                                            <tr>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                            <tr class="singleRow">
                                                <td></td>
                                                <td>景点名称：</td>
                                                <td>${spots.spotsName}</td>
                                                <td>景区电话：</td>
                                                <td>${spots.telephone}</td>
                                                <td></td>
                                            </tr>
                                            <tr class="singleRow">
                                                <td></td>
                                                <td>网址：</td>
                                                <td>${spots.addr}</td>
                                                <td>类别：</td>
                                                <td>${spots.category.categoryName}</td>
                                                <td></td>
                                            </tr>
                                            <tr class="dubleRow">
                                                <td></td>
                                                <td>经度：</td>
                                                <td>${spots.longitude}</td>
                                                <td>纬度：</td>
                                                <td>${spots.latitude}</td>
                                                <td></td>
                                            </tr>
                                            <tr class="singleRow">
                                                <td></td>
                                                <td>图片：</td>
                                                <td>
                                                    <c:forEach items="${spots.pictureList}" var="sp" >
                                                        <img src="${sp.imgurl}" alt="" sizes="5px" width="100px" height="50px">
                                                    </c:forEach>
                                                </td>
                                            </tr>
                                            <tr class="dubleRow">
                                                <td></td>
                                                <td>景点说明：</td>
                                                <td colspan="3">
                                                            <textarea cols="80" rows="5" disabled="disabled">
                                                                ${spots.remark}
                                                            </textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr class="singleRow">
                                                <td></td>
                                                <td>门票价格：</td>
                                                <td colspan="3">
                                                            <textarea cols="80" rows="5" disabled="disabled">
                                                                ${spots.ticketPrice}
                                                            </textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr class="singleRow">
                                                <td></td>
                                                <td>地点：</td>
                                                <td colspan="3">
                                                            <textarea cols="80" rows="5" disabled="disabled">
                                                                ${spots.traffic}
                                                            </textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr class="dubleRow">
                                                <td></td>
                                                <td>交通：</td>
                                                <td colspan="3">
                                                            <textarea cols="80" rows="4" disabled="disabled">
                                                                ${spots.station}
                                                            </textarea>
                                                </td>
                                                <td></td>
                                            </tr>
                                            <tr class="singleRow">
                                                <td></td>
                                                <td>开放时间：</td>
                                                <td colspan="3">
                                                        <textarea cols="80" rows="4" disabled="disabled">
                                                            ${spots.openTime}
                                                        </textarea>
                                                </td>
                                                <td></td>
                                            </tr>


                                            <tr class="dubleRow">
                                                <td></td>
                                                <td>状态：禁用/启用</td>
                                                <td>
                                                    <c:if test="${spots.state==0}">禁用</c:if>
                                                    <c:if test="${spots.state==1}">启用</c:if>
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

                        <!-- 基础操作结束 -->


                        <!-- 分类管理界面开始 -->
                        <div id="category" class="tab-pane">
                            <%--引入类别列表--%>
                            <%@include file="/WEB-INF/pages/backend/main/manage/spots/categorylist.jsp" %>
                        </div>


                        <!-- 分类管理界面结束 -->


                        <!-- 留言管理开始 -->
                        <div id="discuss" class="tab-pane">
                            <%--引入留言列表--%>
                            <%@include file="/WEB-INF/pages/backend/main/manage/spots/discusslist.jsp" %>
                        </div>
                        <!--留言管理结束-->
                    </div>
                </div>
            </section>
        </section>


    </section>
</section>
<!--main content end-->
</section>

<%--结束--%>


</section>

<body>

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

