<%--
  Created by IntelliJ IDEA.
  User: 夏露
  Date: 2018/6/27
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <!-- load css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/common/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css" media="all">
</head>
<body>
<div class="layui-canvs"></div>
<div class="layui-layout layui-layout-login">
    <h1>
        <strong>管理系统后台</strong>
        <em>Management System</em>
    </h1>
    <form action="${pageContext.request.contextPath}/admin_login.action" method="post">
    <div class="layui-user-icon larry-login">
        <input type="text" name="username" placeholder="账号" class="login_txtbx"/>
    </div>
    <div class="layui-pwd-icon larry-login">
        <input type="password" name="password" placeholder="密码" class="login_txtbx"/>
    </div>
    <!--<div class="layui-val-icon larry-login">
    	<div class="layui-code-box">
    		<input type="text" id="code" name="code" placeholder="验证码" maxlength="4" class="login_txtbx">
            <img src="images/verifyimg.png" alt="" class="verifyImg" id="verifyImg" onClick="javascript:this.src='xxx'+Math.random();">
    	</div>
    </div>-->
    <div class="layui-submit larry-login">
        <input type="submit" value="立即登陆" class="submit_btn"/>
    </div>
    <div class="layui-login-text">
        <p>© 2017-2018 Larry 版权所有</p>
        <p>xxxlll</p>
    </div>
    </form>
</div>
<script type="text/javascript" src="common/layui/lay/dest/layui.all.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript" src="jsplug/jparticle.jquery.js"></script>
<script type="text/javascript">
    $(function(){
        $(".layui-canvs").jParticle({
            background: "#141414",
            color: "#E6E6E6"
        });
        //登录链接测试，使用时可删除
        /*$(".submit_btn").click(function(){
            location.href="index.html";
        });*/
    });
</script>
</body>
</html>
