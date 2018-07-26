<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/21 0021
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>注册属于你的蜗牛吧！</title>

    <!-- Bootstrap CSS -->
    <link href="/staticfiles/backend/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="/staticfiles/backend/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="/staticfiles/backend/css/elegant-icons-style.css" rel="stylesheet" >
    <link href="/staticfiles/backend/css/font-awesome.css" rel="stylesheet" >
    <!-- Custom styles -->
    <link href="/staticfiles/backend/css/style.css" rel="stylesheet">
    <link href="/staticfiles/backend/css/style-responsive.css" rel="stylesheet" >

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="/js/html5shiv.js"></script>
    <script src="/js/respond.min.js"></script>
    <script src="/js/jquery-1.4.2.js"></script>

    <script type="text/javascript">

        /*$(document).ready(function() {

            alert("adlkj");
            $("#emailNo").click(function() {

                var emailAddr = $("#email").val();
                $.get("/sendmail",emailAddr,function(result) {
                    alert(result);
                });
            });

        });*/



    </script>



    <![endif]-->
    <!-- 导入jqueryvalidate的js-->
    <script src="/staticfiles/main/js/jquery-1.7.2.js"></script>
    <script src="/staticfiles/main/js/jquery.validate.min.js"></script>
    <!-- 中文信息提示包-->
    <script src="/staticfiles/main/js/messages_zh.js"></script>
    <!-- 导入jqueryvalidate结束-->

    <!--页面校验方法开始 -->
    <script>
       /*  $.validator.setDefaults({
            submitHandler: function() {
//                alert(123);
                form.submit();
				window.location.href="http://www.wn.com/register"
            }
        }); */
        $().ready(function() {
            $("#commentForm").validate();
            $("#emailNo").click(function(){
                var emailAddr = $("#email").val();
//                alert(emailAddr);
                $.get("/sendmail",{"emailAddr":emailAddr},function(result) {
                    alert(result);
                });

            });
        });
    </script>
    <!--页面校验方法结束 -->
    
</head>

<body class="login-img3-body">

<div class="container">

    <form class="login-form" action="/user/regist" method="post" id="commentForm">
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_profile"></i></span>
                <input type="text" class="form-control" placeholder="Username" name="username" autofocus required/>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input  id="cname" type="password" class="form-control" placeholder="Password" name="password" required rangelength="3,10"/>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password" class="form-control" placeholder="Password" name="password2" required equalTo="#cname"/>
            </div>

            <div class="input-group">
                <span class="input-group-addon"><i class="icon_mail_alt"></i></span>
                <input class="form-control" id="email" name="mail"  type="email" placeholder="Format：xxx@xxx.com"  required />
            </div>
            <%--<div class="input-group">

                <input  id="emailNo" class="form-control" type="button"  name="Get authentication"/>
            </div>--%>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_cloud_alt"></i></span>
                <input type="text" class="form-control" placeholder="Verification Code" name="mailNo" required/>
            </div>
            <button class="btn btn-primary btn-lg btn-block" type="button" id="emailNo">获取验证码</button>
            <button class="btn btn-primary btn-lg btn-block" type="submit" >注册</button>
            <div class="" style="color:red">
              <c:if test="${!empty errorInfo}">
                    ${errorInfo}
                </c:if> 
            </div>

        </div>

    </form>

</div>


</body>
</body>
</html>
