<%@ taglib prefix="c4" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<%--模块列表--%>

<!-- 模块管理开始 -->
<section class="panel">
    <button class="btn btn-info popovers" data-original-title="(｡•ˇ‸ˇ•｡)生景点成表!" data-content="点击打印模块的详细信息"
            data-placement="top" data-trigger="hover" class="btn btn-info popovers"
            onclick="window.location.href='/backend/printtable/print/module';">
        打印
    </button>
    <header class="panel-heading">
        模块列表
    </header>
    <form method="post">
        <table class="table">
            <thead>
            <tr>
                <th><input id="selectAllBut" type="checkbox" value="1212"/>&nbsp;&nbsp;&nbsp;全&nbsp;选</th>
                <th>菜单名称</th>
                <th>父模块</th>
                <th>类型</th>
                <th>说明</th>
                <th>状态</th>
            </tr>
            </thead>
            <tbody>
            <tr><input type="text" name="" value=""></tr>
            <c4:forEach items="${moduleList}" var="m">

                <tr class="active">
                    <td><input name="moduleId" type="checkbox" value="${m.moduleId}"/></td>

                    <td>${m.name}</td>
                    <td>${m.parentModule.moduleId}</td>
                    <td>${m.ctype}</td>
                    <td>${m.remark}</td>
                    <td>
                        <div class="switch-animate switch-on">
                            <input name="state" type="checkbox" data-toggle="switch"/>
                            <!-- <span class="switch-left">已禁用
                            </span>
                            <label>
                            </label>
                            <span class="switch-right">
                                已启用
                            </span> -->
                        </div>
                    </td>
                </tr>

            </c4:forEach>
            </tbody>
        </table>
    </form>
</section>
