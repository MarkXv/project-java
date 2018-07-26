<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--景点列表--%>


<!-- 基础操作页面 开始 -->

<div id="home" class="tab-pane active">
    <%--引入home按钮组--%>
    <%@include file="/WEB-INF/pages/backend/base/buts/spots/homebuts.jsp" %>

    <div class="tableBody fixed">

        <div class="col-sm-6">
            <section class="panel">
                <header class="panel-heading">
                    景点列表
                </header>
                <form method="post">
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

                        <c:forEach items="${spotsList}" var="s">
                            <tr class="success">
                                <td><input name="spotsId" type="checkbox" value="${s.spotsId}"/></td>
                                <td>${s.spotsName}</td>
                                <td>${s.category.categoryName}</td>
                                <td>${s.telephone}</td>
                                <td>${s.addr}</td>
                                <td>
                                    <c:if test="${s.state==1}"><a href="/backend/spots/stop?spotsId=${s.spotsId}"><font color="green">启用</font></a></c:if>
                                    <c:if test="${s.state==0}"><a href="/backend/spots/start?spotsId=${s.spotsId}"><font color="red">停用</font></a></c:if>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </form>
            </section>
        </div>
    </div>

</div>
<!-- 基础操作结束 -->
