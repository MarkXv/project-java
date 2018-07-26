<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>登陆蜗牛，一起来牛!</title>

    <!-- Bootstrap CSS -->
    <link href="/staticfiles/backend/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="/staticfiles/backend/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="/staticfiles/backend/css/elegant-icons-style.css" rel="stylesheet"/>
    <link href="/staticfiles/backend/css/font-awesome.css" rel="stylesheet"/>
    <!-- Custom styles -->
    <link href="/staticfiles/backend/css/style.css" rel="stylesheet">
    <link href="/staticfiles/backend/css/style-responsive.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="/js/html5shiv.js"></script>
    <script src="/js/respond.min.js"></script>
    <![endif]-->
    <!-- 导入jqueryvalidate的js-->
    <script src="/js/jquery-1.7.2.js"></script>
    <script src="/js/jquery.validate.min.js"></script>
    <!-- 中文信息提示包-->
    <script src="/js/messages_zh.js"></script>
    <!-- 导入jqueryvalidate结束-->

    <!--页面校验方法开始 -->
    <script>
        $.validator.setDefaults({
            submitHandler: function () {
                alert("提交事件!");
                form.submit();
            }
        });
        $().ready(function () {
            $("#commentForm").validate();
        });
    </script>
    <!--页面校验方法结束 -->
</head>

<body class="login-img3-body">

<div class="container">

    <form class="login-form" action="${wn}/login" id="commentForm">
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_profile"></i></span>
                <input type="text" class="form-control" placeholder="Username" name="username" value="${cookie.autologin.value}" autofocus required>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                <input type="password" class="form-control" placeholder="Password" name="password" required
                       rangelength="3,10">
            </div>
            <h5 class="" style="color:red">
                <c:if test="${!empty errorInfo}">
                    ${errorInfo}
                </c:if>
            </h5>
            <label class="checkbox">
                <input type="checkbox" name="autologin" value="true" ${empty cookie.autologin ? "" : "checked='checked'"}> 记住我
                <span class="pull-right"> <a href="#"> 忘记密码？</a></span>
            </label>
            <button class="btn btn-primary btn-lg btn-block" type="submit">登陆</button>
            <button class="btn btn-info btn-lg btn-block" onclick="location='/toregist'">注册</button>
        </div>

    </form>



</div>


</body>
</html>

