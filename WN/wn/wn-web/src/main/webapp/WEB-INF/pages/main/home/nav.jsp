<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%--前台的导航栏--%>
<nav class="navbar navbar-default">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><img width="80px" height="80px" src="/img/logo.png" alt="蜗牛"><!--<br /><span>旅行</span>--></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul id="logInfo" class="nav navbar-nav navbar-right margin-top cl-effect-2">

				<!-- 处理登出请求 -->
				<script type="text/javascript" > 
					function logout(){
						var jsonp = document.createElement("script");
		                jsonp.type="text/javascript";
		                jsonp.src="http://sso.wn.com/logout?callback='logout'";
		                document.getElementsByTagName("head")[0].appendChild(jsonp);
					}
					
				</script>
				
				<!-- 初始页面后发起根据ticket查询登陆信息 -->
				<script type="text/javascript">
				function getInfo(SysResult){
					var li = document.createElement("li");
					var a = document.createElement("a");
					a.href="javascript:0";
					var span = document.createElement("span");
					if(SysResult.data==201){
						span.textContent="Login";
					//未登陆
					}else if(SysResult.data==200){
						//成功
						span.textContent="Logout";
					}else if(SysResult.data==202){
					//失败
						
					}
					a.appendChild(span);
					li.appendChild(a);
					
					document.getElementById("logInfo").appendChild(li);
				}
					$(function(){
						var jsonp = document.createElement("script");
		                jsonp.type="text/javascript";
		                jsonp.src="http://sso.wn.com/getInfo?callback='getInfo'";
		                document.getElementsByTagName("head")[0].appendChild(jsonp);
					});						
					
				</script>
			
               <%--  <c:if test="${empty sessionScope.userSession}">
                <li><a href="javascript:0" onclick="logout()"><span data-hover="Login">Logout</span></a></li>
                </c:if>
                <c:if test="${!empty sessionScope.userSession}">
                    <li><a href="/tologin"><span data-hover="Logout">Login</span></a></li>
                </c:if> --%>
                <li><a href="/login"><span data-hover="Login">Login</span></a></li>
                <li><a href="/"><span data-hover="Home">Home</span></a></li>

              <!--   <shiro:hasPermission name="backend"> -->
                    <li><a href="/backend/tobackend"><span data-hover="backend">backend</span></a></li>
              <!--   </shiro:hasPermission> -->

                <li><a href="/spots"><span data-hover="Spots">Spots</span></a></li>
                <li><a href=""><span data-hover="about">about</span></a></li>

                <li><a href=""><span data-hover="Contact">Contact</span></a></li>

            </ul>
            <div class="clearfix"></div>
        </div><!-- /.navbar-collapse -->
        <div class="clearfix"></div>
    </div><!-- /container-fluid -->
</nav>