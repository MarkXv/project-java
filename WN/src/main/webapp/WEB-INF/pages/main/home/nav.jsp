<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%--前台的导航栏--%>
<nav class="navbar navbar-default">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><h1>蜗牛</h1><br /><span>旅行</span></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right margin-top cl-effect-2">
                <li><a href="/login"><span data-hover="Login">Login</span></a></li>
                <li><a href="/"><span data-hover="Home">Home</span></a></li>
                <li><a href="/tobackend"><span data-hover="backend">backend</span></a></li>
                <li><a href="/spots"><span data-hover="Spots">Spots</span></a></li>
                <li><a href="/aboutus"><span data-hover="about">about</span></a></li>
            </ul>
            <div class="clearfix"></div>
        </div><!-- /.navbar-collapse -->
        <div class="clearfix"></div>
    </div><!-- /container-fluid -->
</nav>