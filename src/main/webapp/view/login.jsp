<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://"
          + request.getServerName() + ":" + request.getServerPort()
          + path + "/";
%>
<html lang="zh">

<head>
  <title>Wrc Console</title><meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
  <link rel="stylesheet" href="css/matrix-login.css" />
  <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

</head>
<body>
<div id="loginbox">
  <form id="loginform" class="form-vertical" action="http://themedesigner.in/demo/matrix-admin/index.html">
    <div class="control-group normal_text"> <h3><img src="img/logo.png" alt="Logo" /></h3></div>
    <div class="control-group">
      <div class="controls">
        <div class="main_input_box">
          <span class="add-on bg_lg"><i class="icon-user"></i></span><input type="text" placeholder="请输入用户名" />
        </div>
      </div>
    </div>
    <div class="control-group">
      <div class="controls">
        <div class="main_input_box">
          <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" placeholder="请输入密码" />
        </div>
      </div>
    </div>
    <div class="form-actions">
      <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">忘记密码?</a></span>
      <span class="pull-right"><a type="submit" href="index.html" class="btn btn-success" /> 登陆</a></span>
    </div>
  </form>
  <form id="recoverform" action="#" class="form-vertical">
    <p class="normal_text">请输入您的电子邮件地址，我们将向您发送如何恢复密码的指令。</p>

    <div class="controls">
      <div class="main_input_box">
        <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="请输入邮箱" />
      </div>
    </div>

    <div class="form-actions">
      <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; 返回登陆</a></span>
      <span class="pull-right"><a class="btn btn-info"/>提交</a></span>
    </div>
  </form>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/matrix.login.js"></script>
</body>

</html>
