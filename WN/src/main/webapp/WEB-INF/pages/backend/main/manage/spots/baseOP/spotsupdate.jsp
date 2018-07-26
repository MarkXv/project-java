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


    <%--引入我的css--%>
    <link rel="stylesheet" href="/staticfiles/backend/css/mycss.css">


</head>

<body>
<!-- container section start -->
<section id="container" class="">

    <%--引入顶部导航栏--%>
    <%@include file="/WEB-INF/pages/backend/base/nav.jsp" %>

    <%--引入侧边栏--%>
    <%@include file="/WEB-INF/pages/backend/base/sidebar.jsp" %>
    <%--添加页面内容开始--%>

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">
            <!--overview start-->
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa-laptop"></i> 景点管理</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                        <li><i class="fa fa-laptop"></i><a href="/backend/spots/index">景点管理</a></li>
                        <li><i class="icon_genius">景点添加</i></li>
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
                            <%--引入home按钮组--%>
                            <%@include file="/WEB-INF/pages/backend/base/buts/spots/homebuts.jsp" %>

                            <div class="tableBody">
                                <div class="col-lg-12">
                                    <section class="panel">
                                        <header class="panel-heading title2">
                                            景点新增
                                        </header>
                                        <div class="panel-body">
                                            <div class="form">
                                                <form class="form-validate form-horizontal" id="feedback_form"
                                                      method="post" action="">
                                                    <div class="col-lg-10" hidden="hidden">
                                                        <input class="form-control" id="cId" name="spotsId"
                                                               maxlength="20" type="text" value="${spots.spotsId}" required/>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="siteName" class="control-label col-lg-2">景点名称： <span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="cname" name="spotsName"
                                                                   maxlength="20" type="text" value="${spots.spotsName}" required/>
                                                        </div>
                                                    </div>


                                                    <div class="form-group ">
                                                        <label for="tel" class="control-label col-lg-2">景区电话： <span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control " id="tel" type="tel"
                                                                   name="telephone" value="${spots.telephone}" type="number"
                                                                   maxlength="20" required/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="orderNo" class="control-label col-lg-2">网址： <span
                                                                class="required"></span></label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="website" name="addr" value="${spots.addr}" type="url"
                                                                   maxlength="25" placeholder="格式要求：http://+"  required/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group ">
                                                        <label for="addr" class="control-label col-lg-2">类别： <span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                           <select id="category"
                                                                    name="category.categoryId" style="width:222px" required/>
                                                                <option value="0">---请选择类别--</option>
                                                                <c:forEach items="${categoryList}" var="c" >
                                                                    <option value="${c.categoryId}" <c:if test="${spots.category.categoryId==c.categoryId}">selected="selected"</c:if>>${c.categoryName}</option>
                                                                </c:forEach>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="station1" class="control-label col-lg-2">经度： <span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="station1" name="longitude" value="${spots.longitude}"
                                                                   type="text" required/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="station2" class="control-label col-lg-2">纬度： <span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control" id="station2" name="latitude" value="${spots.latitude}"
                                                                   type="text" required/>
                                                        </div>
                                                    </div>

                                                    <div class="form-group ">
                                                        <label for="website" class="control-label col-lg-2">排序号：<span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <input class="form-control " id="orderNo" value="${spots.orderNo}" type="number"
                                                                   name="orderNo" maxlength="25" required/>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="website" class="control-label col-lg-2">图片：<span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <c:forEach items="${stops.pictureList}" var="sp">
                                                                <input class="form-control " id="imgurl" value="${sp.imgurl}" type="url"
                                                                       name="imgurl" maxlength="25" required/>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="ticket" class="control-label col-lg-2">景点说明： <span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <textarea class="form-control" id="remark" name="remark" cols="80" rows="6"
                                                                      minlength="5" type="text" required>${spots.remark}</textarea>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="ticket" class="control-label col-lg-2">门票价格： <span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <textarea class="form-control" id="ticketPrice"
                                                                      name="ticketPrice"  cols="80" rows="6"
                                                                      minlength="5" type="text" required>
                                                                ${spots.ticketPrice}
                                                            </textarea>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="trans" class="control-label col-lg-2">地点：<span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <textarea class="form-control " id="station" name="station"  cols="80" rows="6"
                                                                      required>
                                                                ${spots.station}
                                                            </textarea>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="trans" class="control-label col-lg-2">交通：<span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <textarea class="form-control " id="traffic" name="traffic"  cols="80" rows="6"
                                                                      required>
                                                                ${spots.traffic}
                                                            </textarea>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="opentime" class="control-label col-lg-2">开放时间： <span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <textarea class="form-control" id="opentime" name="openTime"  cols="80" rows="6"
                                                                      maxlength="500" type="text" required>
                                                                ${spots.openTime}
                                                            </textarea>
                                                        </div>
                                                    </div>
                                                    <div class="form-group ">
                                                        <label for="state" class="control-label col-lg-2">状态： <span
                                                                class="required">*</span></label>
                                                        <div class="col-lg-10">
                                                            <input name="state" type="radio" value="0"  <c:if test="${spots.state==0}">checked="checked"</c:if>/>停用
                                                            <input name="state" type="radio" value="1"  <c:if test="${spots.state==1}">checked="checked"</c:if>/>启用
                                                        </div>
                                                    </div>

                                                    <%--按钮点击事件--%>
                                                    <script src="/staticfiles/backend/js/submitAction.js"></script>
                                                    <div class="form-group">
                                                        <div class="col-lg-offset-2 col-lg-10">
                                                            <button class="btn btn-primary addButs" type="button" onclick="formsubmit('/backend/spots/updatespots',1)">修改
                                                            </button>
                                                            <button id="backBut" class="btn btn-default addButs"
                                                                    type="button">返回
                                                            </button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>

                                        </div>
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

