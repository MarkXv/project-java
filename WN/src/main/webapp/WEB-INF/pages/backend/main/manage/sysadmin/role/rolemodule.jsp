<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%--景点类别页面--%>
<!DOCTYPE html>
<html lang="en">
<head>

    <%--引入数据源参数--%>
    <%@include file="/WEB-INF/pages/backend/base/base.jsp"%>

        <link rel="shortcut icon" href="/staticfiles/backend/img/favicon.png">

    <title>蜗牛旅行后台管理系统</title>

    <%--引入css样式--%>
        <!-- Bootstrap CSS -->
        <link href="/staticfiles/backend/css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="/staticfiles/backend/css/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="/staticfiles/backend/css/elegant-icons-style.css" rel="stylesheet" />
        <link href="/staticfiles/backend/css/font-awesome.min.css" rel="stylesheet" />
        <!-- date picker -->

        <!-- color picker -->

        <!-- Custom styles -->
        <link href="/staticfiles/backend/css/style.css" rel="stylesheet">
        <link href="/staticfiles/backend/css/style-responsive.css" rel="stylesheet" />

        <link rel="stylesheet" href="/staticfiles/backend/css/site.css">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
        <!--[if lt IE 9]>
        <script src="/staticfiles/backend/js/html5shiv.js"></script>
        <script src="/staticfiles/backend/js/respond.min.js"></script>
        <script src="/staticfiles/backend/js/lte-ie7.js"></script>
        <![endif]-->
        <!-- ztree树的css引入-->
        <link rel="stylesheet" href="/staticfiles/backend/css/zTree/zTreeStyle/zTreeStyle.css" type="text/css">

        <script src="/staticfiles/backend/js/submitAction.js"></script>


</head>
<body>

<!-- container section start -->
<section id="container" class="">

    <%--引入顶部导航栏--%>
    <%@include file="/WEB-INF/pages/backend/base/nav.jsp"%>

 <%--引入侧边栏--%>
    <%@include file="/WEB-INF/pages/backend/base/sidebar.jsp"%>



        <%--景点类别内容--%>

        <!--main content start-->
        <section id="main-content">
            <section class="wrapper">
                <!--overview start-->
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-laptop"></i> 角色管理</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                            <li><i class="fa fa-laptop"></i><a href="">角色管理</a></li>
                            <li><i class="fa fa-laptop"></i>模块权限</li>
                        </ol>
                    </div>
                </div>

                <!--tab nav start-->

                <section class="panel">
                    <header class="panel-heading tab-bg-primary ">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a data-toggle="tab" href="#home">模块权限</a>
                            </li>

                            <!-- <li class="">
                                <a data-toggle="tab" href="#contact">修改</a>
                            </li> -->
                        </ul>
                    </header>
                    <div class="panel-body">
                        <div class="tab-content">

                            <!-- 开始           -->

                            <form id="scform" method="post" action="">


                                <div class="scForms">
                                    <div class="eXtremeTable" >
                                        <table id="ec_table" class="tableRegion" width="98%" >
                                            <!--隐藏域用来传递数据  -->
                                            <input type="hidden" id="roleId" name="roleId" value="${roleId}"/>
                                            <input type="hidden" id="moduleIds" name="moduleIds" />
                                            <ul id="htZtree" class="ztree"></ul>
                                        </table>
                                    </div>
                                </div>

                                <div class="form-group scButs">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-primary addButs" type="submit" onclick="submitCheckedNodes();formsubmit('/backend/sysadmin/role/saveRoleModule',1)">保存</button>
                                        <button id="backBut" class="btn btn-default addButs" type="button">返回</button>
                                    </div>
                                </div>

                            </form>

                            <!-- 结束 -->





                        </div>
                    </div></section></section>




        </section>
</section>
<!--main content end-->
</section>


</section>



<%--景点管理的页面的js--%>
<!-- container section start -->
<!-- javascripts -->
<script src="/staticfiles/backend/js/jquery.js"></script>
<script src="/staticfiles/backend/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="/staticfiles/backend/js/jquery.scrollTo.min.js"></script>
<script src="/staticfiles/backend/js/jquery.nicescroll.js" type="text/javascript"></script>

<!-- jquery ui -->
<script src="/staticfiles/backend/js/jquery-ui-1.9.2.custom.min.js"></script>

<!--custom checkbox & radio-->
<script type="text/javascript" src="/staticfiles/backend/js/ga.js"></script>
<!--custom switch-->
<script src="/staticfiles/backend/js/bootstrap-switch.js"></script>
<!--custom tagsinput-->
<script src="/staticfiles/backend/js/jquery.tagsinput.js"></script>

<!-- colorpicker -->
<!-- tab容器的js -->
<!-- bootstrap-wysiwyg -->
<script src="/staticfiles/backend/js/jquery.hotkeys.js"></script>
<script src="/staticfiles/backend/js/bootstrap-wysiwyg.js"></script>
<script src="/staticfiles/backend/js/bootstrap-wysiwyg-custom.js"></script>
<!-- ck editor -->
<script type="text/javascript" src="/staticfiles/backend/assets/ckeditor/ckeditor.js"></script>
<!-- custom form component script for this page-->
<script src="/staticfiles/backend/js/form-component.js"></script>
<!-- custome script for all page -->
<script src="/staticfiles/backend/js/scripts.js"></script>


<!-- 引入site.js文件 -->
<!-- 先引入jQuery -->

<script type="text/javascript" src="/staticfiles/backend/js/site_common.js"></script>
<!-- zTree树的js文件-->
<script type="text/javascript" src="/staticfiles/backend/js/jquery.ztree.core-3.5.min.js"></script>
<script type="text/javascript" src="/staticfiles/backend/js/jquery.ztree.excheck-3.5.min.js"></script>
<!--zTree树的jQuery实现 开始-->
<script type="text/javascript">


    var setting = {
        check: {
            enable: true
        },
        data: {
            simpleData: {
                enable: true
            }
        }
    };

    //这里相当于在拿后来传来的数据，后台在传数据的时候，属性名要对应上
    /*var zNodes =*/
    var zNodes = ${zTreeJSON}

            $(document).ready(function(){
                $.fn.zTree.init($("#htZtree"), setting, zNodes);

                var zTreeObj = $.fn.zTree.getZTreeObj("htZtree");
                zTreeObj.expandAll(true);		//展开所有树节点
            });


    //获取到所以用户选中的节点id值
    //获取所有选择的节点，提交时调用下面函数   str= 1,2,121213
    function submitCheckedNodes(treeNode) {
        var nodes = new Array();
        var zTreeObj = $.fn.zTree.getZTreeObj("htZtree");
        nodes = zTreeObj.getCheckedNodes(true);		//取得选中的结点
        var str = "";
        for (i = 0; i < nodes.length; i++) {
            if (str != "") {
                str += ",";
            }
            str += nodes[i].id;
        }

        $('#moduleIds').val(str);		//将拼接完成的字符串放入隐藏域，这样就可以通过post提交
        return true;
    }
    

</script>
<!--zTree树的jQuery实现 结束-->
</body>
</html>

