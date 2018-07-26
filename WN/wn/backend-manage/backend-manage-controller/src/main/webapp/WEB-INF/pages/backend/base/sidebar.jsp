<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>

<%--侧边栏--%>

<aside>
    <div id="sidebar"  class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
            <%--<shiro:hasPermission name="后台首页"> --%>
            <li class="active">
                <a class="" href="/backend/tobackend">
                    <i class="icon_house_alt"></i>
                    <span>后台首页</span>
                </a>
            </li>
            <%-- </shiro:hasPermission> --%>

           <%--  <shiro:hasPermission name="基础信息"> --%>
            <li class="sub-menu">
                <a href="/backend/sysadmin/user/userInfo?userId=${sessionScope.userSession.userId}" class="">
                    <i class="icon_adjust-vert"></i>
                    <span>基础信息</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
            </li>
           <%--  </shiro:hasPermission> --%>

           <%--  <shiro:hasPermission name="景点管理"> --%>
            <li class="sub-menu">
                <a href="/tospotsManage" class="">
                    <i class="icon_desktop"></i>
                    <span>景点管理</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
            </li>
          <%--   </shiro:hasPermission> --%>

           <%--  <shiro:hasPermission name="系统管理"> --%>
            <li class="sub-menu">
                <a class="" href="/tosysadmin">
                    <i class="icon_genius"></i>
                    <span>系统管理</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
            </li>
           <%--  </shiro:hasPermission> --%>

            <li>
                <a class="" href="/tochart">
                    <i class="icon_piechart"></i>
                    <span>报表统计</span>
                </a>
            </li>

            <li class="sub-menu">
                <a href="/backend/printtable/print/index" class="">
                    <i class="icon_table"></i>
                    <span>报表打印</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <%--<ul class="sub">--%>
                    <%--<li><a class="" href="">Basic Table</a></li>--%>
                <%--</ul>--%>
            </li>

            <%--<li class="sub-menu">--%>
                <%--<a href="javascript:;" class="">--%>
                    <%--<i class="icon_documents_alt"></i>--%>
                    <%--<span>Pages</span>--%>
                    <%--<span class="menu-arrow arrow_carrot-right"></span>--%>
                <%--</a>--%>
                <%--<ul class="sub">--%>
                    <%--<li><a class="" href="profile.html">Profile</a></li>--%>
                    <%--<li><a class="" href="login.html"><span>Login Page</span></a></li>--%>
                    <%--<li><a class="" href="blank.html">Blank Page</a></li>--%>
                    <%--<li><a class="" href="404.html">404 Error</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>

        </ul>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
