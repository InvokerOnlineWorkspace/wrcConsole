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
  <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" href="<%=path%>/css/jquery.gritter.css" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
  <img src="img/logo.png"/>
</div>
<!--close-Header-part-->

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">消息</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="index.html"><i class="icon icon-home"></i> <span>我的站点</span></a> </li>
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
        <li class="on"><a href="/boat/info">帆船信息</a></li>
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

<!--content part-->
<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Form elements</a> <a href="#" class="current">Form wizard</a> </div>
    <h1>帆船的名称</h1>
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-pencil"></i></span>
            <h5>修改||新增</h5>
          </div>
          <div class="widget-content nopadding">
            <form id="form-wizard" class="form-horizontal" method="post">
              <div id="form-wizard-1" class="step">
                <div class="control-group">
                  <label class="control-label">帆船的名字</label>
                  <div class="controls">
                    <input id="boatName" type="text" name="boatName" />
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label">帆船的类型</label>
                  <div class="controls">
                    <input id="password" type="password" name="password" />
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label">帆船的品牌</label>
                  <div class="controls">
                    <input id="password2" type="password" name="password2" />
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label">所属目的地</label>
                  <div class="controls">
                    <input id="password2" type="password" name="password2" />
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label">帆船配置详细</label>
                  <div class="controls">
                    <input id="password2" type="password" name="password2" />
                  </div>
                </div>
              </div>
              <div id="form-wizard-2" class="step">
                <div class="control-group">
                  <label class="control-label">Email</label>
                  <div class="controls">
                    <input id="email" type="text" name="email" />
                  </div>
                </div>
                <div class="control-group">
                  <label class="control-label">EULA</label>
                  <div class="controls">
                    <input id="eula" type="checkbox" name="eula" />
                  </div>
                </div>
              </div>
              <div class="form-actions">
                <input id="back" class="btn btn-primary" type="reset" value="回退" />
                <input id="next" class="btn btn-primary" type="submit" value="提交" />
                <div id="status"></div>
              </div>
              <div id="submitted"></div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!--content part end-->

<!--Footer-part-->
<div class="row-fluid">
  <div id="footer" class="span12"> 2017 &copy; wrc-console. Brought to you by <a href="#">Zzh.CN</a> </div>
</div>
<!--end-Footer-part-->

<script src="js/excanvas.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.ui.custom.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.flot.min.js"></script>
<script src="js/jquery.flot.resize.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/matrix.js"></script>
<script src="js/matrix.dashboard.js"></script>
<script src="js/jquery.gritter.min.js"></script>
<script src="js/matrix.interface.js"></script>
<script src="js/matrix.chat.js"></script>
<script src="js/jquery.validate.js"></script>
<script src="js/matrix.form_validation.js"></script>
<script src="js/jquery.wizard.js"></script>
<script src="js/jquery.uniform.js"></script>
<script src="js/select2.min.js"></script>
<script src="js/matrix.popover.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/matrix.tables.js"></script>

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