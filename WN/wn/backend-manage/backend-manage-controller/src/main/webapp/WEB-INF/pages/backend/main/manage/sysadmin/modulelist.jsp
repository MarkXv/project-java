<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<%--模块列表--%>

<!-- 模块管理开始 -->
<%--引入按钮组--%>
<%@include file="/WEB-INF/pages/backend/base/buts/sysadmin/modulebuts.jsp"%>
    <section class="panel">
        <header class="panel-heading">
            模块列表
        </header>
        <form method="post">
        <table class="table">
            <thead>
            <tr>
                <th ><input id="selectAllBut" type="checkbox" value="1212"/>&nbsp;&nbsp;&nbsp;全&nbsp;选</th>
                <th>菜单名称</th>
                <th>父模块</th>
                <th>类型</th>
                <th>说明</th>
                <th>状态</th>
            </tr>
            </thead>
            <tbody>

                <c:forEach items="${moduleList}" var="m">

                    <tr class="active">
                        <td><input name="moduleId" type="checkbox" value="${m.moduleId}"/></td>

                        <td>${m.name}</td>
                        <td>${m.parentModule.moduleId}</td>
                        <td>${m.ctype}</td>
                        <td>${m.remark}</td>
                        <td>
                            <div class="switch-animate switch-on">
                                <c:if test="${m.state==1}"><a href="/backend/sysadmin/module/stop?moduleId=${m.moduleId}"><font color="green">启用</font></a></c:if>
                                <c:if test="${m.state==0}"><a href="/backend/sysadmin/module/start?moduleId=${m.moduleId}"><font color="red">停用</font></a></c:if>
                            </div>
                        </td>
                    </tr>

                </c:forEach>



            </tbody>
        </table>
            </form>
    </section>
