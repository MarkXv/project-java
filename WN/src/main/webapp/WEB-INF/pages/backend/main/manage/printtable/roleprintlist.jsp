<%@ taglib prefix="c3" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%--角色列表--%>
<%--引入按钮组--%>
<div class="tableBody fixed">

    <div class="col-sm-6">
        <section class="panel">
            <button class="btn btn-info popovers" data-original-title="(｡•ˇ‸ˇ•｡)生成表!" data-content="点击打印模块的详细信息"
                    data-placement="top" data-trigger="hover" class="btn btn-info popovers"
                    onclick="window.location.href='/backend/printtable/print/role';">
                打印
            </button>
            <header class="panel-heading">
                角色列表
            </header>

            <form method="post">
                <table class="table">
                    <thead>
                    <tr>
                        <th><input id="selectAllBut" type="checkbox"/>&nbsp;&nbsp;&nbsp;全&nbsp;选</th>
                        <th>角色等级</th>
                        <th>排序号</th>
                        <th>说明</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr><input type="text" name="" value=""></tr>
                    <c3:forEach items="${roleList}" var="r">
                        <tr class="active">
                            <td><input name="roleId" type="checkbox" value="${r.roleId}"/></td>
                            <td>${r.name}</td>
                            <td>${r.orderNo}</td>
                            <td>${r.remark}</td>
                        </tr>
                    </c3:forEach>

                    </tbody>
                </table>
            </form>
        </section>
    </div>
</div>

