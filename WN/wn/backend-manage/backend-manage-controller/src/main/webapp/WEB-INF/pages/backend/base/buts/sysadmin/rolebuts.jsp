<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--系统管理下的角色模块的按钮组--%>

<%--按钮点击事件--%>
<script src="/staticfiles/backend/js/submitAction.js"></script>

<div class="buts">
    <button data-original-title="(｡•ˇ‸ˇ•｡)强迫症!" data-content="点击查看角色的详细信息" data-placement="top" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/sysadmin/role/view',2)">查看</a></button>
    <button data-original-title="(～o￣3￣)～创造大神!" data-content="新建一个角色" data-placement="bottom" data-trigger="hover" class="btn btn-info popovers"><a href="/backend/sysadmin/role/add">新增</a></button>
    <button data-original-title="(￢_￢)嘘~~别让别人发现！" data-content="修改角色信息" data-placement="right" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/sysadmin/role/update',2)">修改</a></button>
    <button data-original-title="哼(ˉ(∞)ˉ)唧,别搞破坏哟~" data-content="删除角色" data-placement="left" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/sysadmin/role/delete',2)">删除</a></button>
    <button data-original-title="嘿！,你要负责哟~" data-content="为角色分配模块权限" data-placement="left" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/sysadmin/role/rolemodule',2)">模块</a></button>
</div>