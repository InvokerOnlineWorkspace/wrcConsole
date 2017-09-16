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
  <link rel="stylesheet" href="<%=path%>/css/colorpicker.css" />
  <link rel="stylesheet" href="<%=path%>/css/datepicker.css" />
  <link rel="stylesheet" href="<%=path%>/css/uniform.css" />
  <link rel="stylesheet" href="<%=path%>/css/select2.css" />
  <link rel="stylesheet" href="<%=path%>/css/matrix-style.css" />
  <link rel="stylesheet" href="<%=path%>/css/matrix-media.css" />
  <link rel="stylesheet" href="<%=path%>/css/bootstrap-wysihtml5.css" />
  <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet" />
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
        <li><a href="<%=path%>/logout"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="<%=path%>/index"><i class="icon icon-home"></i> <span>我的站点</span></a> </li>
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
    <div id="breadcrumb"> <a href="<%=path%>/index" title="返回我的站点" class="tip-bottom"><i class="icon-home"></i> 我的站点</a> <a href="<%=path%>/boat/List">帆船信息</a> <a href="#" class="current">
    <c:if test="${boatInfo.boatName == null}">
      新增帆船信息
    </c:if>
      ${boatInfo.boatName}
    </a> </div>
    <h1>帆船的名称</h1>
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="row-fluid">
        <div class="span2"></div>
        <div class="span8">
          <div class="widget-box">
            <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
              <h5>帆船的信息</h5>
            </div>
            <div class="widget-content nopadding">
              <input type="hidden" name="id" value="${boatInfo.id}">
              <c:choose>
                <c:when test="${method=='0'}">
                  <form action="#" method="get" class="form-horizontal">
                    <div class="control-group">
                      <label class="control-label">帆船名称 :</label>
                      <div class="controls">
                        <input type="text" class="span11" value="${boatInfo.boatName}" readonly/>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">帆船类型 :</label>
                      <div class="controls">
                        <input type="text" class="span11" value="${boatInfo.boatType}" readonly />
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">帆船品牌</label>
                      <div class="controls">
                        <input type="text"  class="span11" value="${boatInfo.boatBrand}" readonly />
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">所属地 :</label>
                      <div class="controls">
                        <input type="text" class="span11" value="${boatInfo.destId}" readonly />
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">载客量 :</label>
                      <div class="controls">
                        <input type="text" class="span11" value="${boatInfo.boatSeat}" readonly/>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">帆船配置 :</label>
                      <div class="controls">
                      <textarea class="span11" readonly>
                          ${boatInfo.boatDetail}
                      </textarea>
                      </div>
                    </div>
                    <div class="form-actions">
                      <a href="<%=path%>/boat/List"  class="btn btn-info">返回列表</a>
                    </div>
                  </form>
                </c:when>
                <c:when test="${method=='1'}">
                  <form action="<%=path%>/boat/add" method="get" class="form-horizontal">
                    <div class="control-group">
                      <label class="control-label">帆船名称 :</label>
                      <div class="controls">
                        <input name="boatName" type="text" class="span11" placeholder="请输入帆船名称"/>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">请选择帆船类型</label>
                      <div class="controls">
                        <select  name="boatType">
                          <option value="单体船">单体船</option>
                          <option value="双体船">双体船</option>
                          <option value="三体船">三体船</option>
                        </select>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">帆船品牌</label>
                      <div class="controls">
                        <input  type="text"  class="span11" placeholder="请输入帆船品牌"/>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">选择所属地 :</label>
                      <div class="controls">
                        <select name="destId">
                          <c:forEach var="destInfo" items="${destList}">
                            <option value="${destInfo.id}">${destInfo.destinationCnName}</option>
                          </c:forEach>
                        </select>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">载客量 :</label>
                      <div class="controls">
                        <input name="boatSeat" type="text" class="span11" placeholder="请输入载客量"/>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">帆船配置 :</label>
                      <div class="controls">
                      <textarea name="boatDetail" class="span11" placeholder="请输入帆船配置。格式 配置名：配置信息，不同配置以,隔开">
                      </textarea>
                      </div>
                    </div>
                    <div class="form-actions">
                      <a href="<%=path%>/boat/List"  class="btn btn-info">返回列表</a>
                      <button id="save-boat-info" class="btn btn-success">提交信息</button>
                    </div>
                  </form>
                </c:when>
                <c:when test="${method=='2'}">
                  <form action="<%=path%>/boat/modify" method="get" class="form-horizontal">
                    <div class="control-group">
                      <label class="control-label">帆船名称 :</label>
                      <div class="controls">
                        <input name="boatName" type="text" class="span11" value="${boatInfo.boatName}" />
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">帆船类型</label>
                      <div class="controls">
                        <select  name="boatType">
                          <option value="${boatInfo.boatType}" selected="selected">${boatInfo.boatType}</option>
                          <option value="单体船">单体船</option>
                          <option value="双体船">双体船</option>
                          <option value="三体船">三体船</option>
                        </select>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">帆船品牌</label>
                      <div class="controls">
                        <input name="boatBrand" type="text"  class="span11" value="${boatInfo.boatBrand}"  />
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">所属地 :</label>
                      <div class="controls">
                        <select name="destId">
                          <c:forEach var="destInfo" items="${destList}">
                            <c:choose>
                              <c:when test="${destInfo.id == boatInfo.destId}">
                                <option value="${destInfo.id}" selected="selected">${destInfo.destinationCnName}</option>
                              </c:when>
                              <c:otherwise>
                                <option value="${destInfo.id}">${destInfo.destinationCnName}</option>
                              </c:otherwise>
                            </c:choose>
                          </c:forEach>
                        </select>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">载客量 :</label>
                      <div class="controls">
                        <input name ="boatSeat" type="text" class="span11" value="${boatInfo.boatSeat}" />
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">帆船配置 :</label>
                      <div class="controls">
                      <textarea name="boatDetail" class="span11">
                          ${boatInfo.boatDetail}
                      </textarea>
                      </div>
                    </div>
                    <div class="form-actions">
                      <a href="<%=path%>/boat/List"  class="btn btn-info">返回列表</a>
                      <button id="edit-boat-info" class="btn btn-success">确认保存</button>
                    </div>
                  </form>
                </c:when>
              </c:choose>
            </div>
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
<script src="<%=path%>/js/wrc/boatInfo.js"></script>
<script src="<%=path%>/js/jquery.min.js"></script>
<script src="<%=path%>/js/jquery.ui.custom.js"></script>
<script src="<%=path%>/js/bootstrap.min.js"></script>
<script src="<%=path%>/js/bootstrap-colorpicker.js"></script>
<script src="<%=path%>/js/bootstrap-datepicker.js"></script>
<script src="<%=path%>/js/jquery.toggle.buttons.html"></script>
<script src="<%=path%>/js/masked.js"></script>
<script src="<%=path%>/js/jquery.uniform.js"></script>
<script src="<%=path%>/js/select2.min.js"></script>
<script src="<%=path%>/js/matrix.js"></script>
<script src="<%=path%>/js/matrix.form_common.js"></script>
<script src="<%=path%>/js/wysihtml5-0.3.0.js"></script>
<script src="<%=path%>/js/jquery.peity.min.js"></script>
<script src="<%=path%>/js/bootstrap-wysihtml5.js"></script>

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