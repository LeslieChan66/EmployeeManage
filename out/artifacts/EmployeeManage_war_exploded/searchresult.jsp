<%--
  Created by IntelliJ IDEA.
  User: Leslie Chan
  Date: 2018/7/4
  Time: 23:54
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- 可选的Bootstrap主题文件（一般不使用） -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>查找结果</title>
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
                查询结果
            </h3>
            <a href="a.html" class="btn btn-default">返回</a>
            <table class="table">
                <thead>
                <tr>
                    <th>
                        编号
                    </th>
                    <th>
                        姓名
                    </th>
                    <th>
                        年龄
                    </th>
                    <th>
                        职位
                    </th>
                    <th>
                        薪水
                    </th>
                    <th>
                        入职日期
                    </th>
                </tr>
                </thead>
                <tbody id="trs">
                <tr>
                    <td>
                        ${employee.id}
                    </td>
                    <td>
                        ${employee.name}
                    </td>
                    <td>
                        ${employee.age}
                    </td>
                    <td>
                        ${employee.position}
                    </td>
                    <td>
                        ${employee.salary}
                    </td>
                    <td>
                        ${employee.date}
                    </td>

                </tr>


                </tbody>
            </table>
            <ul class="pagination" id="lis">

            </ul>
        </div>
    </div>
</div>
</body>
</html>
