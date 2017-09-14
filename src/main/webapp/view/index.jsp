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
  <title>玩儿船后台管理系统</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css" />
  <link rel="stylesheet" href="<%=path%>/css/bootstrap-responsive.min.css" />
  <link rel="stylesheet" href="<%=path%>/css/fullcalendar.css" />
  <link rel="stylesheet" href="<%=path%>/css/matrix-style.css" />
  <link rel="stylesheet" href="<%=path%>/css/matrix-media.css" />
  <link rel="stylesheet" href="<%=path%>/css/jquery.gritter.css" />
  <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
  <img src="<%=path%>/img/logo.png"/>
</div>
<!--close-Header-part-->

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome admin</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="<%=path%>/logout"><i class="icon-key"></i> 账号登出</a></li>
      </ul>
    </li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="<%=path%>/index.html"><i class="icon icon-home"></i> <span>我的站点</span></a> </li>
    <li class="submenu"> <a href="#"><i class="icon icon icon-cog"></i> <span>系统管理</span></a>
      <ul>
        <li><a href="form-common.html">用户管理</a></li>
        <li><a href="form-validation.html">角色管理</a></li>
        <li><a href="form-wizard.html">修改密码</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon icon-reorder"></i> <span>页面管理</span></a>
      <ul>
        <li><a href="form-common.html">首页</a></li>
        <li><a href="form-validation.html">游玩目的地</a></li>
        <li><a href="form-wizard.html">关于我们</a></li>
        <li><a href="form-wizard.html">海外商店</a></li>
        <li><a href="form-wizard.html">达人分享</a></li>
        <li><a href="form-wizard.html">常见问题</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon icon-th-large"></i> <span>信息管理</span></a>
      <ul>
        <li><a href="form-validation.html">目的地信息</a></li>
        <li><a href="<%=path%>/boat/List">帆船信息</a></li>
        <li><a href="form-wizard.html">航海计划信息</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon icon-tags"></i> <span>网站运营</span></a>
      <ul>
        <li><a href="form-wizard.html">在线咨询</a></li>
        <li><a href="form-wizard.html">在线预约</a></li>
        <li><a href="form-wizard.html">SEO管理</a></li>
      </ul>
    </li>
  </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
  <!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>我的站点</a></div>
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-flag"></i> </span>
            <h5 >站点信息</h5>
          </div>
          <div class="widget-content">
            <div class="row-fluid">
              <div class="span6">
                <table class="">
                  <tbody>
                  <tr>
                    <img src="<%=basePath%>/img/logo.png"/>
                  </tr>
                  <tr>
                    <td><h5>隶属于风行海商务服务(北京) 有限公司，是一家整合全球岛屿旅游资源及</h5></td>
                  </tr>
                  <tr>
                    <td><h5>提供游艇租赁的私属定制机构。</h5></td>
                  </tr>
                  </tbody>
                </table>
              </div>
              <div class="span6">
                <table class="table table-bordered table-invoice">
                  <tbody>
                  <tr>
                    <td>网站名称:</td>
                    <td><strong>玩儿船网 (www.wanerchuan.com)</strong></td>
                  </tr>
                  <tr>
                    <td>公司名称:</td>
                    <td><strong>风行海商务服务(北京)有限公司</strong></td>
                  </tr>
                  <tr>
                    <td>版权所有:</td>
                    <td><strong>玩儿船 Copyright © 2013 com All rights reserved.京ICP证:13029641号</strong></td>
                  </tr>
                  <tr>
                    <td>客服电话</td>
                    <td>
                      <p><strong>国内：+86-18653289591</strong></p>
                      <p><strong>国外：+230 57655895</strong></p>
                    </td>
                  </tr>
                  <tr>
                    <td>联系地址: </td>
                    <td><strong>中国北京市海淀区交大东路66号院1号楼262</strong></td>
                  </tr>
                  </tbody>

                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--End-breadcrumbs-->
</div>
<!--end-main-container-part-->

<!--Footer-part-->
<div class="row-fluid">
  <div id="footer" class="span12"> 2017 &copy; wrc-console. Brought to you by <a href="#">Zzh.CN</a> </div>
</div>
<!--end-Footer-part-->

<script src="<%=path%>/js/excanvas.min.js"></script>
<script src="<%=path%>/js/jquery.min.js"></script>
<script src="<%=path%>/js/jquery.ui.custom.js"></script>
<script src="<%=path%>/js/bootstrap.min.js"></script>
<script src="<%=path%>/js/jquery.flot.min.js"></script>
<script src="<%=path%>/js/jquery.flot.resize.min.js"></script>
<script src="<%=path%>/js/jquery.peity.min.js"></script>
<script src="<%=path%>/js/fullcalendar.min.js"></script>
<script src="<%=path%>/js/matrix.js"></script>
<script src="<%=path%>/js/matrix.dashboard.js"></script>
<script src="<%=path%>/js/jquery.gritter.min.js"></script>
<script src="<%=path%>/js/matrix.interface.js"></script>
<script src="<%=path%>/js/matrix.chat.js"></script>
<script src="<%=path%>/js/jquery.validate.js"></script>
<script src="<%=path%>/js/matrix.form_validation.js"></script>
<script src="<%=path%>/js/jquery.wizard.js"></script>
<script src="<%=path%>/js/jquery.uniform.js"></script>
<script src="<%=path%>/js/select2.min.js"></script>
<script src="<%=path%>/js/matrix.popover.js"></script>
<script src="<%=path%>/js/jquery.dataTables.min.js"></script>
<script src="<%=path%>/js/matrix.tables.js"></script>

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

    // if url is empty, skip the menu dividers and reset the menu selection to default
    if (newURL != "") {

      // if url is "-", it is this page -- reset the menu:
      if (newURL == "-" ) {
        resetMenu();
      }
      // else, send page to designated URL
      else {
        document.location.href = newURL;
      }
    }
  }

  // resets the menu selection upon entry to this page:
  function resetMenu() {
    document.gomenu.selector.selectedIndex = 2;
  }
</script>
</body>
</html>

