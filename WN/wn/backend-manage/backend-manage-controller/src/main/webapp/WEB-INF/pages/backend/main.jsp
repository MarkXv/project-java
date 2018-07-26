<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%--首页的main界面--%>

<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <!--overview start-->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> 简报</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                    <li><i class="fa fa-laptop"></i>简报</li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="info-box blue-bg">
                    <i class="fa fa-cloud-download"></i>
                    <div class="count">${count}</div>
                    <div class="title">日访问量</div>
                </div><!--/.info-box-->
            </div><!--/.col-->

            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="info-box brown-bg">
                    <i class="fa fa-shopping-cart"></i>
                    <div class="count">${count}</div>
                    <div class="title">总浏览量</div>
                </div><!--/.info-box-->
            </div><!--/.col-->

            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="info-box dark-bg">
                    <i class="fa fa-thumbs-o-up"></i>
                    <div class="count">3</div>
                    <div class="title">当前在线用户数</div>
                </div><!--/.info-box-->
            </div><!--/.col-->

            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="info-box green-bg">
                    <i class="fa fa-cubes"></i>
                    <div class="count">${userCounts}</div>
                    <div class="title">用户总数</div>
                </div><!--/.info-box-->
            </div><!--/.col-->


        </div><!--/.row-->
        <%--<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >免费网站模板</a></div>--%>


        <div class="row">
            <div class="col-lg-9 col-md-12">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-map-marker red"></i><strong>您的位置</strong></h2>
                        <div class="panel-actions">
                            <a href="index.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="index.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="index.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body-map">
                        <%--<div id="map" style="height:380px;"></div>--%>
                        <div id="allmap" style="height:380px;"></div>
                    </div>

                </div>
            </div>
            <div class="col-md-3">
                <!-- List starts -->
                <ul class="today-datas">
                    <!-- List #1 -->
                    <li>
                        <!-- Graph -->
                        <div><span id="todayspark1" class="spark"></span></div>
                        <!-- Text -->
                        <div class="datas-text">11,500 visitors/day</div>
                    </li>
                    <li>
                        <div><span id="todayspark2" class="spark"></span></div>
                        <div class="datas-text">15,000 Pageviews</div>
                    </li>
                    <li>
                        <div><span id="todayspark3" class="spark"></span></div>
                        <div class="datas-text">30.55% Bounce Rate</div>
                    </li>
                    <li>
                        <div><span id="todayspark4" class="spark"></span></div>
                        <div class="datas-text">$16,00 Revenue/Day</div>
                    </li>
                    <li>
                        <div><span id="todayspark5" class="spark"></span></div>
                        <div class="datas-text">12,000000 visitors every Month</div>
                    </li>
                </ul>
            </div>


        </div>


        <!-- Today status end -->


        <div class="row">

            <div class="col-lg-9 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-flag-o red"></i><strong>Registered Users</strong></h2>
                        <div class="panel-actions">
                            <a href="index.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="index.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="index.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table bootstrap-datatable countries">
                            <thead>
                            <tr>
                                <th></th>
                                <th>用户所在省份</th>
                                <th>用户总数</th>
                                <th>当前在线数</th>
                                <th>活跃程度</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><img src="img/Germany.png" style="height:18px; margin-top:-2px;"></td>
                                <td>北京</td>
                                <td>2563</td>
                                <td>1025</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                             aria-valuenow="73" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 73%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar"
                                             aria-valuenow="27" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 27%">
                                        </div>
                                    </div>
                                    <span class="sr-only">73%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="img/India.png" style="height:18px; margin-top:-2px;"></td>
                                <td>上海</td>
                                <td>3652</td>
                                <td>2563</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                             aria-valuenow="57" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 57%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar"
                                             aria-valuenow="43" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 43%">
                                        </div>
                                    </div>
                                    <span class="sr-only">57%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="img/Spain.png" style="height:18px; margin-top:-2px;"></td>
                                <td>广州</td>
                                <td>562</td>
                                <td>452</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                             aria-valuenow="93" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 93%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar"
                                             aria-valuenow="7" aria-valuemin="0" aria-valuemax="100" style="width: 7%">
                                        </div>
                                    </div>
                                    <span class="sr-only">93%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="img/India.png" style="height:18px; margin-top:-2px;"></td>
                                <td>天津</td>
                                <td>1258</td>
                                <td>958</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 20%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar"
                                             aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 80%">
                                        </div>
                                    </div>
                                    <span class="sr-only">20%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="img/Spain.png" style="height:18px; margin-top:-2px;"></td>
                                <td>深圳</td>
                                <td>4856</td>
                                <td>3621</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 20%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar"
                                             aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 80%">
                                        </div>
                                    </div>
                                    <span class="sr-only">20%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="img/Germany.png" style="height:18px; margin-top:-2px;"></td>
                                <td>河北</td>
                                <td>265</td>
                                <td>102</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 20%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar"
                                             aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 80%">
                                        </div>
                                    </div>
                                    <span class="sr-only">20%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="img/Germany.png" style="height:18px; margin-top:-2px;"></td>
                                <td>河南</td>
                                <td>265</td>
                                <td>102</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 20%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar"
                                             aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 80%">
                                        </div>
                                    </div>
                                    <span class="sr-only">20%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="img/Germany.png" style="height:18px; margin-top:-2px;"></td>
                                <td>东北</td>
                                <td>265</td>
                                <td>102</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 20%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar"
                                             aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 80%">
                                        </div>
                                    </div>
                                    <span class="sr-only">20%</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>

            </div><!--/col-->
            <div class="col-md-3">

                <div class="social-box facebook">
                    <i class="fa fa-facebook"></i>
                    <ul>
                        <li>
                            <strong>256次</strong>
                            <span>分享</span>
                        </li>
                        <li>
                            <strong>359人</strong>
                            <span>关注</span>
                        </li>
                    </ul>
                </div><!--/social-box-->
            </div>
            <div class="col-md-3">

                <div class="social-box">
                    <i class="fa "><img alt="微信" src="/"></i>
                    <ul>
                        <li>
                            <strong>962次</strong>
                            <span>分享</span>
                        </li>
                        <li>
                            <strong>256人</strong>
                            <span>关注</span>
                        </li>
                    </ul>
                </div><!--/social-box-->

            </div><!--/col-->
            <div class="col-md-3">

                <div class="social-box twitter">
                    <i class="fa fa-twitter"></i>
                    <ul>
                        <li>
                            <strong>1562次</strong>
                            <span>分享</span>
                        </li>
                        <li>
                            <strong>2562人</strong>
                            <span>关注</span>
                        </li>
                    </ul>
                </div><!--/social-box-->

            </div><!--/col-->

        </div>


        <!-- statics end -->


        <!-- project team & activity start -->
        <%--<div class="row">--%>
        <%--<div class="col-md-4 portlets">--%>
        <%--<!-- Widget -->--%>
        <%--<div class="panel panel-default">--%>
        <%--<div class="panel-heading">--%>
        <%--<div class="pull-left">Message</div>--%>
        <%--<div class="widget-icons pull-right">--%>
        <%--<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>--%>
        <%--<a href="#" class="wclose"><i class="fa fa-times"></i></a>--%>
        <%--</div>--%>
        <%--<div class="clearfix"></div>--%>
        <%--</div>--%>

        <%--<div class="panel-body">--%>
        <%--<!-- Widget content -->--%>
        <%--<div class="padd sscroll">--%>

        <%--<ul class="chats">--%>

        <%--<!-- Chat by us. Use the class "by-me". -->--%>
        <%--<li class="by-me">--%>
        <%--<!-- Use the class "pull-left" in avatar -->--%>
        <%--<div class="avatar pull-left">--%>
        <%--<img src="img/user.jpg" alt=""/>--%>
        <%--</div>--%>

        <%--<div class="chat-content">--%>
        <%--<!-- In meta area, first include "name" and then "time" -->--%>
        <%--<div class="chat-meta">John Smith <span class="pull-right">3 hours ago</span></div>--%>
        <%--Vivamus diam elit diam, consectetur dapibus adipiscing elit.--%>
        <%--<div class="clearfix"></div>--%>
        <%--</div>--%>
        <%--</li>--%>

        <%--<!-- Chat by other. Use the class "by-other". -->--%>
        <%--<li class="by-other">--%>
        <%--<!-- Use the class "pull-right" in avatar -->--%>
        <%--<div class="avatar pull-right">--%>
        <%--<img src="img/user22.png" alt=""/>--%>
        <%--</div>--%>

        <%--<div class="chat-content">--%>
        <%--<!-- In the chat meta, first include "time" then "name" -->--%>
        <%--<div class="chat-meta">3 hours ago <span class="pull-right">Jenifer Smith</span></div>--%>
        <%--Vivamus diam elit diam, consectetur fconsectetur dapibus adipiscing elit.--%>
        <%--<div class="clearfix"></div>--%>
        <%--</div>--%>
        <%--</li>--%>

        <%--<li class="by-me">--%>
        <%--<div class="avatar pull-left">--%>
        <%--<img src="img/user.jpg" alt=""/>--%>
        <%--</div>--%>

        <%--<div class="chat-content">--%>
        <%--<div class="chat-meta">John Smith <span class="pull-right">4 hours ago</span></div>--%>
        <%--Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.--%>
        <%--<div class="clearfix"></div>--%>
        <%--</div>--%>
        <%--</li>--%>

        <%--<li class="by-other">--%>
        <%--<!-- Use the class "pull-right" in avatar -->--%>
        <%--<div class="avatar pull-right">--%>
        <%--<img src="img/user22.png" alt=""/>--%>
        <%--</div>--%>

        <%--<div class="chat-content">--%>
        <%--<!-- In the chat meta, first include "time" then "name" -->--%>
        <%--<div class="chat-meta">3 hours ago <span class="pull-right">Jenifer Smith</span></div>--%>
        <%--Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.--%>
        <%--<div class="clearfix"></div>--%>
        <%--</div>--%>
        <%--</li>--%>

        <%--</ul>--%>

        <%--</div>--%>
        <%--<!-- Widget footer -->--%>
        <%--<div class="widget-foot">--%>

        <%--<form class="form-inline">--%>
        <%--<div class="form-group">--%>
        <%--<input type="text" class="form-control" placeholder="Type your message here...">--%>
        <%--</div>--%>
        <%--<button type="submit" class="btn btn-info">Send</button>--%>
        <%--</form>--%>


        <%--</div>--%>
        <%--</div>--%>


        <%--</div>--%>
        <%--</div>--%>

        <%--<div class="col-lg-8">--%>
        <%--<!--Project Activity start-->--%>
        <%--<section class="panel">--%>
        <%--<div class="panel-body progress-panel">--%>
        <%--<div class="row">--%>
        <%--<div class="col-lg-8 task-progress pull-left">--%>
        <%--<h1>To Do Everyday</h1>--%>
        <%--</div>--%>
        <%--<div class="col-lg-4">--%>
        <%--<span class="profile-ava pull-right">--%>
        <%--<img alt="" class="simple" src="img/avatar1_small.jpg">--%>
        <%--Jenifer smith--%>
        <%--</span>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<table class="table table-hover personal-task">--%>
        <%--<tbody>--%>
        <%--<tr>--%>
        <%--<td>Today</td>--%>
        <%--<td>--%>
        <%--web design--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="badge bg-important">Upload</span>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="profile-ava">--%>
        <%--<img alt="" class="simple" src="img/avatar1_small.jpg">--%>
        <%--</span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>Yesterday</td>--%>
        <%--<td>--%>
        <%--Project Design Task--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="badge bg-success">Task</span>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<div id="work-progress2"></div>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>21-10-14</td>--%>
        <%--<td>--%>
        <%--Generate Invoice--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="badge bg-success">Task</span>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<div id="work-progress3"></div>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>22-10-14</td>--%>
        <%--<td>--%>
        <%--Project Testing--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="badge bg-primary">To-Do</span>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="profile-ava">--%>
        <%--<img alt="" class="simple" src="img/avatar1_small.jpg">--%>
        <%--</span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>24-10-14</td>--%>
        <%--<td>--%>
        <%--Project Release Date--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="badge bg-info">Milestone</span>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<div id="work-progress4"></div>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>28-10-14</td>--%>
        <%--<td>--%>
        <%--Project Release Date--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="badge bg-primary">To-Do</span>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<div id="work-progress5"></div>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>Last week</td>--%>
        <%--<td>--%>
        <%--Project Release Date--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="badge bg-primary">To-Do</span>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<div id="work-progress1"></div>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
        <%--<td>last month</td>--%>
        <%--<td>--%>
        <%--Project Release Date--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="badge bg-success">To-Do</span>--%>
        <%--</td>--%>
        <%--<td>--%>
        <%--<span class="profile-ava">--%>
        <%--<img alt="" class="simple" src="img/avatar1_small.jpg">--%>
        <%--</span>--%>
        <%--</td>--%>
        <%--</tr>--%>
        <%--</tbody>--%>
        <%--</table>--%>
        <%--</section>--%>
        <%--<!--Project Activity end-->--%>
        <%--</div>--%>
        <%--</div><br><br>--%>

        <%--<div class="row">--%>
        <%--<div class="col-md-6 portlets">--%>
        <%--<div class="panel panel-default">--%>
        <%--<div class="panel-heading">--%>
        <%--<h2><strong>Calendar</strong></h2>--%>
        <%--<div class="panel-actions">--%>
        <%--<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>--%>
        <%--<a href="#" class="wclose"><i class="fa fa-times"></i></a>--%>
        <%--</div>--%>

        <%--</div><br><br><br>--%>
        <%--<div class="panel-body">--%>
        <%--<!-- Widget content -->--%>

        <%--<!-- Below line produces calendar. I am using FullCalendar plugin. -->--%>
        <%--<div id="calendar"></div>--%>

        <%--</div>--%>
        <%--</div>--%>

        <%--</div>--%>

        <%--<div class="col-md-6 portlets">--%>
        <%--<div class="panel panel-default">--%>
        <%--<div class="panel-heading">--%>
        <%--<div class="pull-left">Quick Post</div>--%>
        <%--<div class="widget-icons pull-right">--%>
        <%--<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>--%>
        <%--<a href="#" class="wclose"><i class="fa fa-times"></i></a>--%>
        <%--</div>--%>
        <%--<div class="clearfix"></div>--%>
        <%--</div>--%>
        <%--<div class="panel-body">--%>
        <%--<div class="padd">--%>

        <%--<div class="form quick-post">--%>
        <%--<!-- Edit profile form (not working)-->--%>
        <%--<form class="form-horizontal">--%>
        <%--<!-- Title -->--%>
        <%--<div class="form-group">--%>
        <%--<label class="control-label col-lg-2" for="title">Title</label>--%>
        <%--<div class="col-lg-10">--%>
        <%--<input type="text" class="form-control" id="title">--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<!-- Content -->--%>
        <%--<div class="form-group">--%>
        <%--<label class="control-label col-lg-2" for="content">Content</label>--%>
        <%--<div class="col-lg-10">--%>
        <%--<textarea class="form-control" id="content"></textarea>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<!-- Cateogry -->--%>
        <%--<div class="form-group">--%>
        <%--<label class="control-label col-lg-2">Category</label>--%>
        <%--<div class="col-lg-10">--%>
        <%--<select class="form-control">--%>
        <%--<option value="">- Choose Cateogry -</option>--%>
        <%--<option value="1">General</option>--%>
        <%--<option value="2">News</option>--%>
        <%--<option value="3">Media</option>--%>
        <%--<option value="4">Funny</option>--%>
        <%--</select>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--<!-- Tags -->--%>
        <%--<div class="form-group">--%>
        <%--<label class="control-label col-lg-2" for="tags">Tags</label>--%>
        <%--<div class="col-lg-10">--%>
        <%--<input type="text" class="form-control" id="tags">--%>
        <%--</div>--%>
        <%--</div>--%>

        <%--<!-- Buttons -->--%>
        <%--<div class="form-group">--%>
        <%--<!-- Buttons -->--%>
        <%--<div class="col-lg-offset-2 col-lg-9">--%>
        <%--<button type="submit" class="btn btn-primary">Publish</button>--%>
        <%--<button type="submit" class="btn btn-danger">Save Draft</button>--%>
        <%--<button type="reset" class="btn btn-default">Reset</button>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</form>--%>
        <%--</div>--%>


        <%--</div>--%>
        <%--<!-- Footer goes here -->--%>
        <%--</div>--%>
        <%--</div>--%>

        <%--</div>--%>

        <%--</div>--%>
        <%--<!-- project team & activity end -->--%>

    </section>
</section>
<!--main content end-->
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=MDgpDTyZW2g3fUesjavkQbVhuVQ15fWH"></script>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");
    var point = new BMap.Point(116.331398,39.897445);

    map.centerAndZoom(point,12);

    var geolocation = new BMap.Geolocation();
    geolocation.getCurrentPosition(function(r){
        if(this.getStatus() == BMAP_STATUS_SUCCESS){
            var mk = new BMap.Marker(r.point);
            map.addOverlay(mk);
            map.panTo(r.point);
            /*alert('您的位置：'+r.point.lng+','+r.point.lat);*/
        }
        else {
           /* alert('failed'+this.getStatus());*/
        }
    },{enableHighAccuracy: true})
</script>