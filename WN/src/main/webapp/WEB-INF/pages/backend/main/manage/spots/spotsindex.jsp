<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<%--景点管理的首页--%>

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
                      <%--引入景点列表--%>
                        <%@include file="/WEB-INF/pages/backend/main/manage/spots/spotslist.jsp"%>
                    </div>

                    <!-- 基础操作结束 -->


                    <!-- 分类管理界面开始 -->
                    <div id="category" class="tab-pane">
                   <%--引入类别列表--%>
                        <%@include file="/WEB-INF/pages/backend/main/manage/spots/categorylist.jsp"%>
                    </div>


                    <!-- 分类管理界面结束 -->


                    <!-- 留言管理开始 -->
                    <div id="discuss" class="tab-pane">
                        <%--引入留言列表--%>
                        <%@include file="/WEB-INF/pages/backend/main/manage/spots/discusslist.jsp"%>
                </div>
                    <!--留言管理结束-->
            </div>
        </div></section></section>




    </section>
</section>
<!--main content end-->
</section>