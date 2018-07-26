<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<%--类别列表--%>


                    <!-- 分类管理界面开始 -->
                    <div id="category" class="tab-pane">
                    <%--引入分类的按钮组--%>
                    <%@include file="/WEB-INF/pages/backend/base/buts/spots/categorybuts.jsp"%>

                        <div class="tableBody fixed">

                            <div class="col-sm-6">
                                <section class="panel">
                                    <header class="panel-heading">
                                        类别列表
                                    </header>
                                    <form post="method">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th ><input id="selectAllBut" type="checkbox" value="1212"/>&nbsp;&nbsp;&nbsp;全&nbsp;选</th>
                                            <th>名称</th>
                                            <th>排序号</th>
                                            <th>状态</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${categoryList}" var="c">
                                            <tr class="success">
                                                <td><input name="categoryId" type="checkbox" value="${c.categoryId}"/></td>
                                                <td>${c.categoryName}</td>
                                                <td>${c.orderNo}</td>
                                                <td>
                                                    <c:if test="${c.state==1}"><a href="/backend/category/stop?categoryId=${c.categoryId}"><font color="green">启用</font></a></c:if>
                                                    <c:if test="${c.state==0}"><a href="/backend/category/start?categoryId=${c.categoryId}"><font color="red">停用</font></a></c:if>
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


                    <!-- 分类管理界面结束 -->


