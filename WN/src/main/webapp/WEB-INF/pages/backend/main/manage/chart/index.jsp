<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <%--引入数据源参数--%>
    <%@include file="/WEB-INF/pages/backend/base/base.jsp"%>
    <link rel="shortcut icon" href="img/favicon.png">
    <title>蜗牛旅行后台管理系统</title>
    <%--引入css样式--%>
    <%@include file="/WEB-INF/pages/backend/base/baseconfs.jsp"%>
    <%@include file="/WEB-INF/pages/backend/base/nav.jsp"%>
    <%@include file="/WEB-INF/pages/backend/base/sidebar.jsp"%>
    <link href="/staticfiles/backend/css/bootstrap.min.css" rel="stylesheet">
    <link href="/staticfiles/backend/css/bootstrap-theme.css" rel="stylesheet">
    <link href="/staticfiles/backend/css/elegant-icons-style.css" rel="stylesheet" />
    <link href="/staticfiles/backend/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/staticfiles/backend/css/style.css" rel="stylesheet">
    <link href="/staticfiles/backend/css/style-responsive.css" rel="stylesheet" />


    <script type="text/javascript" src="/staticfiles/backend/js/echarts.js" ></script>
    <script type="text/javascript" src="/staticfiles/backend/js/jquery.js" ></script>
    <script type="text/javascript" src="/staticfiles/backend/js/mychart.js"></script>
    <script type="text/javascript" src="/staticfiles/backend/js/mychart1.js"></script>
        <!-- chartjs -->
        <script src="/staticfiles/backend/assets/chart-master/Chart.js"></script>
        <!-- custom chart script for this page only-->
        <script src="/staticfiles/backend/js/chartjs-custom.js"></script>
        <!--custome script for all page-->
        <script src="/staticfiles/backend/js/scripts.js"></script>


</head>
    <body>
    <input type="text" hidden="hidden" id="data" value=${data} />
    <input type="text" hidden="hidden" id="data1" value=${data1} />
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="icon_piechart"></i>蜗牛</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                        <li><i class="icon_piechart"></i>报表统计</li>
                    </ol>
                </div>
            </div>
            <div class="row">
                <!-- chart morris start -->
                    <div class="col-lg-12">
                        <section class="panel">
                          <header class="panel-heading">
                            <h3>数据量统计</h3>
                            </header>

                          <div class="panel-body" >
                              <div class="tab-pane" id="chartjs">
                                  <div class="row">

                                    <!-- Line -->
                                    <div class="col-lg-6">
                                        <section class="panel">
                                            <header class="panel-heading">
                                                点击量分析
                                            </header>
                                            <div id="chart-panel" style="width: 600px; height: 400px;"></div>
                                        </section>
                                    </div>

                                      <div class="col-lg-6">
                                          <section class="panel">
                                              <header class="panel-heading">
                                                  景点类型分布
                                              </header>
                                              <div id="chart-pane2"  style="width: 600px; height: 400px;"></div>
                                          </section>
                                      </div>
                                </div>
                            </div>
                        </div>

            </section>
            </div>
            </div>
        </section>
    </section>

    <script src="/staticfiles/backend/js/jquery.scrollTo.min.js"></script>
    <script src="/staticfiles/backend/js/jquery.nicescroll.js" type="text/javascript"></script>


    <script src="/staticfiles/backend/js/bootstrap.min.js"></script>

    </body>
</html>

