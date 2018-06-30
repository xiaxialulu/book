<%--
  Created by IntelliJ IDEA.
  User: 夏露
  Date: 2017/12/20
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>书籍信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/common/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/common/bootstrap/css/bootstrap.css" media="all">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/common/global.css" media="all">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/personal.css" media="all">
</head>
<body>
<section class="layui-larry-box">
    <div class="larry-personal">
        <header class="larry-personal-tit">
            <span>书籍信息</span>
        </header><!-- /header -->
        <div class="larry-personal-body clearfix">
            <form class="layui-form col-lg-5" action="${pageContext.request.contextPath}/book_updateBook.action" method="post">
                <div class="layui-form-item">
                    <label class="layui-form-label">书籍名称</label>
                    <div class="layui-input-block">
                        <input type="hidden" name="id" value="${requestScope.book.id}">
                        <input type="text" name="name"  autocomplete="off"  class="layui-input layui-disabled" value="${requestScope.book.name}"  >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">书籍类型</label>
                    <div class="layui-input-block">
                        <input type="text" name="type"  autocomplete="off" class="layui-input layui-disabled" value="${requestScope.book.type}" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">作者</label>
                    <div class="layui-input-block">
                        <input type="text" name="autho"  autocomplete="off" class="layui-input" value="${requestScope.book.autho}">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">出版社</label>
                    <div class="layui-input-block">
                        <input type="text" name="press"  autocomplete="off" class="layui-input" value="${requestScope.book.press}">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">书籍简介</label>
                    <div class="layui-input-block">
                        <textarea name="intro" placeholder="既然选择了远方，便只顾风雨兼程；路漫漫其修远兮，吾将上下而求索" class="layui-textarea">${requestScope.book.intro}</textarea>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-submit="" lay-filter="demo1">修改</button>
                        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<script type="text/javascript" src="common/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form','upload'],function(){
        var form = layui.form();
        layui.upload({
            url: '' ,//上传接口
            success: function(res){
                //上传成功后的回调
                console.log(res)
            }
        });

    });
</script>
</body>
</html>
