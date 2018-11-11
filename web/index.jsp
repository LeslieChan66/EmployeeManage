<%--
  Created by IntelliJ IDEA.
  User: Leslie Chan
  Date: 2018/7/1
  Time: 23:46
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>登陆</title>
  <meta charset="UTF-8" />
  <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
  <title>This is a simple login page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="欢迎来到登陆界面" />
  <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
  <meta name="author" content="Codrops" />
  <link rel="shortcut icon" href="../favicon.ico">
  <link rel="stylesheet" type="text/css" href="css/demo.css" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
  <script>
      var n=0;
      function onimgclick(){
          //把img上的验证重新生成
          //使得img的src重新请求我们图片验证码的那个servlet
          //设置src的时候，浏览器会自己检查src是否是和之前的src一样，如果一样，就不请求网络了。
          document.getElementById("img").src="imagecode?n="+n;
          n++;
      }
  </script>
</head>
<body>
<div class="container">
  <header>
    <h1>
      员工管理系统
    </h1>
  </header>
  <section>
    <div id="container_demo">
      <div id="wrapper">
        <div id="login" class="animate form">
          <form action="login" method="post" autocomplete="on">
            <h1>管理员登录</h1>
            <p>
              <label for="username" class="uname" data-icon="u">用户名</label>
              <input type="text" id="username" name="username" placeholder="请输入用户名">
            </p>
            <p>
              <label for="password" class="youpasswd" data-icon="p">密码</label>
              <input type="password" id="password" name="password" placeholder="请输入密码">
            </p>
            <p>
              <label for="checkcodetext" data-icon="p">验证码</label>
              <input type="text" name="checkcodetext" id="checkcodetext" placeholder="请输入验证码" onclick="oncheckcodekeyup()">
              <img src="imagecode" id="img" onclick="onimgclick()">
            </p>
            <p class="keeplogin">
              <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" />
              <label for="loginkeeping">记住密码</label>
            </p>
            <p class="login button">
              <input type="submit" value="登录" />
            </p>
          </form>
        </div>
      </div>
    </div>
  </section>
</div>
</body>
</html>
