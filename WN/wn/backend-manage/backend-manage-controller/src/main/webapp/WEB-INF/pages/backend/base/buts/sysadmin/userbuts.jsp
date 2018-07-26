<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%--系统管理科下用户模块的分类的按钮组--%>
<%--按钮点击事件--%>
<script src="/staticfiles/backend/js/submitAction.js"></script>

    <div class="buts">

            <button data-original-title="(｡•ˇ‸ˇ•｡)强迫症!" data-content="点击查看用户的详细信息" data-placement="top" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/sysadmin/user/view',1)">查看</a></button>

            <button data-original-title="(～o￣3￣)～创造大神!" data-content="新建一个用户" data-placement="bottom" data-trigger="hover" class="btn btn-info popovers"><a href="/backend/sysadmin/user/add" >新增</a></button>

            <button data-original-title="(￢_￢)嘘~~别让别人发现！" data-content="修改一个用户的信息" data-placement="right" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/sysadmin/user/update',1)">修改</a></button>


            <button data-original-title="哼(ˉ(∞)ˉ)唧,别搞破坏哟~" data-content="删除一个用户" data-placement="left" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/sysadmin/user/delete',1)">删除</a></button>
            <button data-original-title="嘿！  你想清楚啊~~~" data-content="为用户分配角色" data-placement="left" data-trigger="hover" class="btn btn-info popovers"><a href="javascript:;" onclick="formsubmit('/backend/sysadmin/user/userrole',1)">角色</a></button>

    </div>
