<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--景点模块基础操作的按钮组--%>

<%--引入按钮点击事件--%>
<!--<script src="/staticfiles/backend/js/buts.js"></script>-->
<%--按钮点击事件--%>
<script src="/staticfiles/backend/js/submitAction.js"></script>

<div  class="buts">
    <button data-original-title="(｡•ˇ‸ˇ•｡)强迫症!" data-content="点击查看景点的详细信息" data-placement="top" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/spots/view',1)">查看</a></button>

    <button data-original-title="(～o￣3￣)～创造大神!" data-content="新建一个景点" data-placement="bottom" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/spots/add',1)">新增</a></button>
    <button data-original-title="(￢_￢)嘘~~别让别人发现！" data-content="修改一个景点信息" data-placement="right" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/spots/update',1)">修改</a></button>
    <button data-original-title="哼(ˉ(∞)ˉ)唧,别搞破坏哟~" data-content="删除一个景点" data-placement="left" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/spots/delete',1)">删除</a></button>
    <%--<button data-original-title="来，过吧领导的瘾(✿◡‿◡)" data-content="为景点归类" data-placement="left" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/spots/spotscategory',1)">类别</a></button>--%>
</div>
