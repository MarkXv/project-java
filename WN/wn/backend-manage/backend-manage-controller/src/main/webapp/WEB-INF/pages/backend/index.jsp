<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%--整体的结构页面--%>
<!DOCTYPE html>
<html lang="en">
<head>

    <%--引入数据源参数--%>
    <%@include file="/WEB-INF/pages/backend/base/base.jsp"%>

        <link rel="shortcut icon" href="img/favicon.png">

    <title>蜗牛旅行后台管理系统</title>

    <%--引入css样式--%>
    <%@include file="/WEB-INF/pages/backend/base/baseconfs.jsp"%>

</head>

<body>
<!-- container section start -->
<section id="container" class="">


<%--引入顶部导航栏--%>
    <%@include file="/WEB-INF/pages/backend/base/nav.jsp"%>
<%--引入侧边栏--%>
    <%@include file="/WEB-INF/pages/backend/base/sidebar.jsp"%>
<%--引入首页界面--%>
    <%@include file="/WEB-INF/pages/backend/main.jsp"%>

</section>
<!-- container section start -->

<!-- javascripts -->
<script src="/staticfiles/backend/js/jquery.js"></script>
<script src="/staticfiles/backend/js/jquery-ui-1.10.4.min.js"></script>
<script src="/staticfiles/backend/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/staticfiles/backend/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="/staticfiles/backend/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="/staticfiles/backend/js/jquery.scrollTo.min.js"></script>
<script src="/staticfiles/backend/js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="/staticfiles/backend/assets/jquery-knob/js/jquery.knob.js"></script>
<script src="/staticfiles/backend/js/jquery.sparkline.js" type="text/javascript"></script>
<script src="/staticfiles/backend/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="/staticfiles/backend/js/owl.carousel.js" ></script>
<!-- jQuery full calendar -->
<script src="/staticfiles/backend/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
<script src="/staticfiles/backend/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="/staticfiles/backend/js/calendar-custom.js"></script>
<script src="/staticfiles/backend/js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="/staticfiles/backend/js/jquery.customSelect.min.js" ></script>
<script src="/staticfiles/backend/assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="/staticfiles/backend/js/scripts.js"></script>
<!-- custom script for this page-->
<script src="/staticfiles/backend/js/sparkline-chart.js"></script>
<script src="/staticfiles/backend/js/easy-pie-chart.js"></script>
<script src="/staticfiles/backend/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/staticfiles/backend/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="/staticfiles/backend/js/xcharts.min.js"></script>
<script src="/staticfiles/backend/js/jquery.autosize.min.js"></script>
<script src="/staticfiles/backend/js/jquery.placeholder.min.js"></script>
<script src="/staticfiles/backend/js/gdp-data.js"></script>
<script src="/staticfiles/backend/js/morris.min.js"></script>
<script src="/staticfiles/backend/js/sparklines.js"></script>
<script src="/staticfiles/backend/js/charts.js"></script>
<script src="/staticfiles/backend/js/jquery.slimscroll.min.js"></script>
<script>

    //knob
    $(function() {
        $(".knob").knob({
            'draw' : function () {
                $(this.i).val(this.cv + '%')
            }
        })
    });

    //carousel
    $(document).ready(function() {
        $("#owl-slider").owlCarousel({
            navigation : true,
            slideSpeed : 300,
            paginationSpeed : 400,
            singleItem : true

        });
    });

    //custom select box

    $(function(){
        $('select.styled').customSelect();
    });

    /* ---------- Map ---------- */
    $(function(){
        $('#map').vectorMap({
            map: 'world_mill_en',
            series: {
                regions: [{
                    values: gdpData,
                    scale: ['#000', '#000'],
                    normalizeFunction: 'polynomial'
                }]
            },
            backgroundColor: '#eef3f7',
            onLabelShow: function(e, el, code){
                el.html(el.html()+' (GDP - '+gdpData[code]+')');
            }
        });
    });



</script>

</body>
</html>

