<%--
  Created by IntelliJ IDEA.
  User: Leslie Chan
  Date: 2018/7/2
  Time: 16:53
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改商品</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- 可选的Bootstrap主题文件（一般不使用） -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body background="images/bg.jpg">
<nav class="navbar-inverse visible-lg visible-md" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand">员工管理系统</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li><a href="a.html">主页</a></li>
                <li><a href="index.jsp">退出系统</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>
                修改员工信息
            </h3>
            <form role="form" method="post" action="edit">
                <input type="hidden" name="id" value="${employee.id}"/>
                <div class="form-group">
                    <label for="exampleInputEmail1">姓名</label><input value="${employee.name}" type="text" class="form-control" id="name" name="name" />
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">年龄</label><input value="${employee.age}" type="text" class="form-control" id="age" name="age" />
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">职位</label><input value="${employee.position}" type="text" class="form-control" id="position" name="position" />
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">薪水</label><input value="${employee.salary}" type="text" class="form-control" id="salary" name="salary" />
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">入职日期</label><input value="${employee.date}" type="text" class="form-control" id="date" name="date" />
                </div>
                <button type="submit" class="btn btn-default">保存</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
