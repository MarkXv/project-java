<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--角色列表--%>
<%--引入按钮组--%>
<%@include file="/WEB-INF/pages/backend/base/buts/sysadmin/rolebuts.jsp"%>
                                <div class="tableBody fixed">

                                    <div class="col-sm-6">
                                        <section class="panel">
                                            <header class="panel-heading">
                                                角色列表
                                            </header>

                                            <form method="post">
                                            <table class="table">
                                                <thead>
                                                <tr>
                                                    <th ><input id="selectAllBut" type="checkbox" />&nbsp;&nbsp;&nbsp;全&nbsp;选</th>
                                                    <th>角色等级</th>
                                                    <th>排序号</th>
                                                    <th>说明</th>
                                                </tr>
                                                </thead>
                                                <tbody>

                                                        <c:forEach items="${roleList}" var="r">
                                                            <tr class="active">
                                                                <td><input name="roleId"  type="checkbox" value="${r.roleId}"/></td>
                                                                <td>${r.name}</td>
                                                                <td>${r.orderNo}</td>
                                                                <td>${r.remark}</td>

                                                            </tr>

                                                        </c:forEach>

                                                </tbody>
                                            </table>
                                                </form>
                                        </section>
                                    </div>
                                </div>

