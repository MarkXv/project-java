<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--景点模块的留言的按钮组--%>
<%--按钮点击事件--%>
<script src="/staticfiles/backend/js/submitAction.js"></script>

<div class="buts">
    <button data-original-title="(｡•ˇ‸ˇ•｡)强迫症!" data-content="点击查看一条留言" data-placement="top" data-trigger="hover" class="btn btn-info popovers">
        <a href="javascript:;" onclick="formsubmit('/backend/spots/discuss/view',3)">查看</a></button>
    <!--  <button data-original-title="(￢_￢)嘘~~别让别人发现！" data-content="修改一个景点信息" data-placement="right" data-trigger="hover" class="btn btn-info popovers">修改</button> -->
    <button data-original-title="哼(ˉ(∞)ˉ)唧,别搞破坏哟~" data-content="删除一条留言" data-placement="left" data-trigger="hover" class="btn btn-info popovers">
        <a href="javascript:;" onclick="formsubmit('/backend/spots/discuss/delete',3)">删除</a></button>
</div>
