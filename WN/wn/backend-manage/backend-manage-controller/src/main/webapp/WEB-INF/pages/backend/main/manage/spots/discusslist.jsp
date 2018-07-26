<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<%--留言列表--%>



    <%--引入留言的按钮组--%>
    <%@include file="/WEB-INF/pages/backend/base/buts/spots/discussbuts.jsp"%>

    <div class="tableBody fixed">

        <div class="col-sm-6">
            <section class="panel">
                <header class="panel-heading">
                    留言板简报
                </header>
                <form post="method">
                <table class="table">
                    <thead>
                    <tr>
                        <th ><input id="selectAllBut" type="checkbox" value="1212"/>&nbsp;&nbsp;&nbsp;全&nbsp;选</th>
                        <th>ID</th>
                        <th>发表人</th>
                        <th>简述</th>
                        <th>排序号</th>
                        <th>状态</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="active">
                        <td>1<input name="discussId"  type="checkbox" value="discussId"/></td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>

                    </tr>
                    <tr class="success">
                        <td>2<input  type="checkbox" value="1212"/></td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
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
                    <tr class="warning">
                        <td>3<input  type="checkbox" value="1212"/></td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>
                    <tr class="danger">
                        <td>4<input  type="checkbox" value="1212"/></td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                        <td>Column content</td>
                    </tr>


                    </tbody>
                </table>
                    </form>
            </section>
        </div>
    </div>

