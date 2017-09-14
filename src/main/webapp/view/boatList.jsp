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
  <link rel="stylesheet" href="<%=path%>/css/uniform.css" />
  <link rel="stylesheet" href="<%=path%>/css/select2.css" />
  <link rel="stylesheet" href="<%=path%>/css/matrix-style.css" />
  <link rel="stylesheet" href="<%=path%>/css/matrix-media.css" />
  <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
  <img src="<%=basePath%>img/logo.png"/>
</div>
<!--close-Header-part-->

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome Admin</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="<%=path%>/logout"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
  </ul>
</div>
<!--close-top-Header-menu-->

<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i>  </a>
  <ul>
    <li><a href="<%=basePath%>/index"><i class="icon icon-home"></i> <span>我的站点</span></a> </li>
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
    <li class="submenu open"> <a href="#"><i class="icon icon icon-th-large"></i> <span>信息管理</span></a>
      <ul>
        <li><a href="form-validation.html">目的地信息</a></li>
        <li class="active"><a href="<%=path%>/boat/List">帆船信息</a></li>
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
<div id="content"  >
  <div id="content-header">
    <div id="breadcrumb"> <a href="<%=basePath%>/index" title="返回我的站点" class="tip-bottom"><i class="icon-home"></i> 我的站点</a> <a href="#" class="current">帆船信息</a> </div>
    <h1>帆船列表</h1>
    <div style="float: left;padding-left: 20px">
      <a href="<%=basePath%>/modify">
        <button class="btn btn-success"><i class="icon-plus"> 新增帆船信息</i></button>
      </a>
    </div>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
            <h5>列表信息</h5>
          </div>
          <div class="widget-content nopadding">
            <table class="table table-bordered data-table">
              <thead>
              <tr>
                <th>序号</th>
                <th>帆船名称</th>
                <th>属地</th>
                <th>帆船类型</th>
                <th>帆船品牌</th>
                <th>载客量</th>
                <th>操作</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${boatInfoList}" var="boatInfo" begin="0" end="${boatInfoList.size()}" varStatus="status">
                <tr>
                  <td>${status.index+1}</td>
                  <td>${boatInfo.boatName}</td>
                  <td>${boatInfo.destId}</td>
                  <td>${boatInfo.boatType}</td>
                  <td>${boatInfo.boatBrand}</td>
                  <td class="center">${boatInfo.boatSeat}</td>
                  <td class="center">
                    <a href="<%=basePath%>/boat/info?id=${boatInfo.id}">
                      <button  class="btn btn-info btn-mini"><i class="icon-eye-open"></i></button>
                    </a>
                    <a href="<%=basePath%>/boat/modify?id=${boatInfo.id}">
                    <button  class="btn btn-warning btn-mini"><i class="icon-edit"></i></button>
                    </a>
                    <a href="<%=basePath%>/boat/remove?id=${boatInfo.id}">
                    <button  class="btn btn-danger btn-mini"><i class="icon-trash"></i></button>
                    </a>
                  </td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
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

<script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/jquery.ui.custom.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/js/jquery.uniform.js"></script>
<script src="<%=basePath%>/js/select2.min.js"></script>
<script src="<%=basePath%>/js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>/js/matrix.js"></script>
<script src="<%=basePath%>/js/matrix.tables.js"></script>

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