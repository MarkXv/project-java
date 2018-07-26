<%@ taglib prefix="c2" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!-- 基础操作页面 开始 -->

<div id="home" class="tab-pane active">


    <div class="tableBody fixed">

        <div class="col-sm-6">
            <section class="panel">
                <%--景点列表--%>
                <button class="btn btn-info popovers" data-original-title="(｡•ˇ‸ˇ•｡)生景点成表!" data-content="点击打印模块的详细信息"
                        data-placement="top" data-trigger="hover" class="btn btn-info popovers" onclick="window.location.href='/backend/printtable/print/spots';">
                                                                                                 打印</button>
                </button>
                <header class="panel-heading">
                    景点列表
                </header>
                <form post="method">
                    <table class="table">
                        <thead>
                        <tr>
                            <th><input id="selectAllBut" type="checkbox" value="1212"/>&nbsp;&nbsp;&nbsp;全&nbsp;选</th>
                            <th>景点名称</th>
                            <th>类别</th>
                            <th>联系方式</th>
                            <th>网址</th>
                            <th>启用/禁用</th>
                        </tr>
                        </thead>
                        <tbody>

                        <c2:forEach items="${spotsList}" var="s">
                            <tr class="success">
                                <td><input name="spotsId" type="checkbox" value="${s.spotsId}"/></td>
                                <td>${s.spotsName}</td>

                                <td>${s.category.categoryName}</td>
                                <td>${s.telephone}</td>
                                <td>${s.addr}</td>

                                <td>
                                    <div class="switch-animate switch-on">
                                        <input name="state" type="checkbox" data-toggle="switch" value=""/>
                                            <%--<span class="switch-left">已禁用
+                                            <label>
                                            </label>
                                            <span class="switch-right">
                                                已启用
                                            </span>--%>
                                    </div>
                                </td>
                            </tr>
                        </c2:forEach>
                        </tbody>
                    </table>
                </form>
            </section>
        </div>
    </div>

</div>

<!-- 基础操作结束 -->

