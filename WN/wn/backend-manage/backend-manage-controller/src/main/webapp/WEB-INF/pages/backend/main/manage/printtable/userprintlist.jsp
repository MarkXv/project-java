<%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%--用户列表--%>
<%--引入按钮组--%>


<div class="tableBody fixed">

    <div class="col-sm-6">
        <section class="panel">
            <button class="btn btn-info popovers" data-original-title="(｡•ˇ‸ˇ•｡)生景点成表!" data-content="点击打印模块的详细信息"
                    data-placement="top" data-trigger="hover" class="btn btn-info popovers"
                    onclick="window.location.href='/backend/printtable/print/user';">
                打印
            </button>
            <header class="panel-heading">
                用户列表
            </header>
            <form method="post">


                <table class="table">
                    <thead>
                    <tr>
                        <th><input id="selectAllBut" type="checkbox" onclick="checkAll('userId',this)"/>&nbsp;&nbsp;&nbsp;全&nbsp;选
                        </th>
                        <th>用户名称</th>
                        <th>性别</th>
                        <th>生日</th>
                        <th>联系方式</th>
                        <th>邮箱</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr><input type="text" name="" value=""></tr>
                    <c1:forEach items="${userList}" var="u">
                        <tr class="danger">
                            <td><input name="userId" type="checkbox" value="${u.userId}"/></td>
                                <%--<td><input  name="userId" type="checkbox" value="111"/></td>--%>
                            <td>${u.username}</td>
                            <td>${u.userInfo.gender}</td>
                            <td>${u.userInfo.birthday}</td>
                            <td>${u.userInfo.telephone}</td>
                            <td>${u.userInfo.email}</td>
                        </tr>

                    </c1:forEach>
                    </tbody>
                </table>
            </form>
        </section>
    </div>
</div>



