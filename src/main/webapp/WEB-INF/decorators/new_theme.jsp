<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/content/taglib.jsp" %>

<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en" class="no-js"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

    <meta charset="utf-8"/>

    <title><decorator:title default="川航货运直销系统"/></title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>

    <meta content="" name="description"/>

    <meta content="" name="author"/>

    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <link href="${pageContext.request.contextPath}/assets/new/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <link href="${pageContext.request.contextPath}/assets/new/css/bootstrap-responsive.min.css" rel="stylesheet"
          type="text/css"/>

    <link href="${pageContext.request.contextPath}/assets/new/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>

    <link href="${pageContext.request.contextPath}/assets/new/css/style-metro.css" rel="stylesheet" type="text/css"/>

    <link href="${pageContext.request.contextPath}/assets/new/css/style.css" rel="stylesheet" type="text/css"
          charset="utf-8"/>

    <link href="${pageContext.request.contextPath}/assets/new/css/style-responsive.css" rel="stylesheet"
          type="text/css"/>

    <link href="${pageContext.request.contextPath}/assets/new/css/light.css" rel="stylesheet" type="text/css"
          id="style_color"/>

    <link href="${pageContext.request.contextPath}/assets/new/css/uniform.default.css" rel="stylesheet"
          type="text/css"/>


    <!-- END GLOBAL MANDATORY STYLES -->

    <decorator:head/>

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/new/image/favicon.ico"/>

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

<!-- BEGIN HEADER -->

<div class="header navbar navbar-inverse navbar-fixed-top">

    <!-- BEGIN TOP NAVIGATION BAR -->

    <div class="navbar-inner">

        <div class="container-fluid">

            <!-- BEGIN LOGO -->

            <a class="brand" href="${pageContext.request.contextPath}/flightSchedule/index">

                <img src="${pageContext.request.contextPath}/assets/new/image/scalLogo3-mini.png" alt="logo"/>

            </a>

            <!-- END LOGO -->

            <!-- BEGIN RESPONSIVE MENU TOGGLER -->

            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">

                <img src="${pageContext.request.contextPath}/assets/new/image/menu-toggler.png" alt=""/>

            </a>

            <!-- END RESPONSIVE MENU TOGGLER -->

            <!-- BEGIN TOP NAVIGATION MENU -->

            <ul class="nav pull-right">



                <!-- BEGIN USER LOGIN DROPDOWN -->

                <li class="dropdown user">

                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">

                        <img alt="" src="${pageContext.request.contextPath}/assets/new/image/avatar1_small.jpg"/>

                        <span class="username">${sessionScope.user.userName}</span>

                        <i class="icon-angle-down"></i>

                    </a>

                    <ul class="dropdown-menu">

                        <%--<li><a href="extra_profile.html"><i class="icon-user"></i> 我的信息</a></li>--%>

                        <%--<li><a href="page_calendar.html"><i class="icon-calendar"></i> 我的日程</a></li>--%>

                        <%--<li><a href="inbox.html"><i class="icon-envelope"></i> 我的邮箱(3)</a></li>--%>

                        <%--<li><a href="#"><i class="icon-tasks"></i> 我的任务</a></li>--%>

                        <%--<li class="divider"></li>--%>

                        <%--<li><a href="extra_lock.html"><i class="icon-lock"></i> 锁屏</a></li>--%>
                        <%--<li><a href="javascript:;"><i class="icon-tasks"></i>等待完善</a></li>--%>
                        <%--<li class="divider"></li>--%>
                        <li><a href="${pageContext.request.contextPath}/logout"><i class="icon-key"></i> 退出系统</a></li>

                    </ul>

                </li>

                <!-- END USER LOGIN DROPDOWN -->

            </ul>

            <!-- END TOP NAVIGATION MENU -->

        </div>

    </div>

    <!-- END TOP NAVIGATION BAR -->

</div>

<!-- END HEADER -->
<div class="copyrights">收集整理 by <a href="">技术开发室</a></div>

<!-- BEGIN CONTAINER -->

<div class="page-container">

    <!-- BEGIN SIDEBAR -->

    <div class="page-sidebar nav-collapse collapse">

        <!-- BEGIN SIDEBAR MENU -->

        <ul class="page-sidebar-menu">

            <li>

                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

                <div class="sidebar-toggler hidden-phone"></div>

                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

            </li>
            <li>


            </li>


            <li  class="<c:choose><c:when test="${param.tag==1}">start active</c:when><c:otherwise>smenu</c:otherwise></c:choose>">

                <a href="javascript:;">

                    <i class="icon-home"></i>

                    <span class="title">任务管理</span>

                    <span class="arrow "></span>

                </a>
                <ul class="sub-menu">

                    <li class="<c:if test="${param.tag==1}">start active</c:if>">

                        <a href="${ctx}/task/manageindex?tag=1">

                            任务</a>

                    </li>

                </ul>

            </li>

            <li class="smenu">

                <a href="javascript:;">

                    <i class="icon-cogs"></i>

                    <span class="title">出入库</span>

                    <span class="arrow "></span>

                </a>
                <ul class="sub-menu">

                    <li >

                        <a href="javascript:;">

                            生产资料出入库</a>

                    </li>
                    <li>
                        <a href="javascript:;">

                            物资出入库</a>
                    </li>

                </ul>
            </li>

            <li class="smenu">

                <a href="javascript:;">

                    <i class="icon-th"></i>

                    <span class="title">查询统计</span>

                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">

                    <li >

                        <a href="javascript:;">

                            收货单</a>

                    </li>
                    <li>
                        <a href="javascript:;">

                            航空运输单</a>
                    </li>
                    <li>
                        <a href="javascript:;">

                            地面运输单</a>
                    </li>
                    <li>
                        <a href="javascript:;">

                            签收单运输单</a>
                    </li>
                    <li>
                        <a href="javascript:;">

                            车辆使用</a>
                    </li>
                    <li>
                        <a href="javascript:;">

                            第三方派送记录</a>
                    </li>
                    <li>
                        <a href="javascript:;">

                            异常信息</a>
                    </li>
                    <li>
                        <a href="javascript:;">

                            财务报表</a>
                    </li>

                </ul>
            </li>
            <li class="<c:choose><c:when test="${param.tag>=60&&param.tag<=80}">start active</c:when><c:otherwise>smenu</c:otherwise></c:choose>">

                <a href="javascript:;">

                    <i class="icon-time"></i>

                    <span class="title">基础信息</span>

                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li class="<c:if test="${param.tag==60}">start active</c:if>">
                        <a href="${ctx}/baseinfo/attentionitemsindex?tag=60">

                            注意事项维护</a>
                    </li>
                    <li class="<c:if test="${param.tag==61}">start active</c:if>">
                        <a href="${ctx}/baseinfo/documentindex?tag=61">

                            随附文件维护</a>
                    </li>
                    <li class="<c:if test="${param.tag==62}">start active</c:if>">
                        <a href="${ctx}/baseinfo/datamindex?tag=62">

                            数据维护</a>
                    </li>
                    <li class="<c:if test="${param.tag==63}">start active</c:if>">
                        <a href="${ctx}/baseinfo/shipperindex?tag=63">

                            托运人维护</a>
                    </li>
                    <li class="<c:if test="${param.tag==64}">start active</c:if>">
                        <a href="${ctx}/baseinfo/receiverindex?tag=64">

                            收货人维护</a>
                    </li>
                    <li class="<c:if test="${param.tag==65}">start active</c:if>">
                        <a href="${ctx}/baseinfo/carsindex?tag=65">

                            车辆维护</a>
                    </li>
                    <li class="<c:if test="${param.tag==66}">start active</c:if>">
                        <a href="${ctx}/baseinfo/driversindex?tag=66">

                            司机维护</a>
                    </li>
                    <li class="<c:if test="${param.tag==67}">start active</c:if>">
                        <a href="${ctx}/baseinfo/cityindex?tag=67">

                            城市信息维护</a>
                    </li>
                    <li class="<c:if test="${param.tag==68}">start active</c:if>">
                        <a href="${ctx}/baseinfo/abnormalindex?tag=68">

                            异常类型维护</a>
                    </li>
                    <li class="<c:if test="${param.tag==69}">start active</c:if>">
                        <a href="${ctx}/baseinfo/itemindex?tag=69">

                            出入库物品信息维护</a>
                    </li>
                    <li class="<c:if test="${param.tag==70}">start active</c:if>">
                        <a href="${ctx}/baseinfo/signindex?tag=70">

                            计量单位维护</a>
                    </li>
                    <li class="<c:if test="${param.tag==71}">start active</c:if>">
                        <a href="${ctx}/baseinfo/deliveryindex?tag=71">

                            派送单位维护</a>
                    </li>
                </ul>
            </li>
            <li class="smenu">

                <a href="javascript:;">

                    <i class="icon-th"></i>

                    <span class="title">财务表单</span>

                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">

                    <li >

                        <a href="javascript:;">

                            生成空白收货单</a>

                    </li>
                    <li >

                        <a href="javascript:;">

                            空白单据管理</a>

                    </li>
                </ul>
            </li>
            <li class="smenu">

                <a href="javascript:;">

                    <i class="icon-sitemap"></i>

                    <span class="title">关于系统</span>

                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">

                    <li >

                        <a href="javascript:;">

                            版本历史</a>

                    </li>
                    <li >

                        <a href="javascript:;">

                            使用帮助</a>

                    </li>
                </ul>
            </li>

        </ul>



        <!-- END SIDEBAR MENU -->

    </div>

    <!-- END SIDEBAR -->

    <!-- BEGIN PAGE -->

    <div class="page-content">

        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <div id="portlet-config" class="modal hide">

            <div class="modal-header">

                <button data-dismiss="modal" class="close" type="button"></button>

                <h3>Widget Settings</h3>

            </div>

            <div class="modal-body">

                Widget settings form goes here

            </div>

        </div>

        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <!-- BEGIN PAGE CONTAINER-->
        <decorator:body/>

        <!-- END PAGE -->

    </div>


</div>
<!-- END CONTAINER -->

<!-- BEGIN FOOTER -->

<jsp:include page="common/footer.jsp"></jsp:include>

<!-- END FOOTER -->

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

<!-- BEGIN CORE PLUGINS -->

<script src="${pageContext.request.contextPath}/assets/new/js/jquery-1.10.1.min.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/assets/new/js/jquery-migrate-1.2.1.min.js"
        type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

<script src="${pageContext.request.contextPath}/assets/new/js/jquery-ui-1.10.1.custom.min.js"
        type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/assets/new/js/bootstrap.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>

<script src="${pageContext.request.contextPath}/assets/new/js/excanvas.min.js"></script>

<script src="${pageContext.request.contextPath}/assets/new/js/respond.min.js"></script>

<![endif]-->

<script src="${pageContext.request.contextPath}/assets/new/js/jquery.slimscroll.min.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/assets/new/js/jquery.blockui.min.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/assets/new/js/jquery.cookie.min.js" type="text/javascript"></script>

<script src="${pageContext.request.contextPath}/assets/new/js/jquery.uniform.min.js" type="text/javascript"></script>
<!--引用My97DatePicker.JS文件-->
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/assets/new/js/My97DatePicker/WdatePicker.js"></script>
<!--结束引用My97DatePicker.JS文件-->

<!-- END CORE PLUGINS -->


<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="${pageContext.request.contextPath}/assets/new/js/app.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/assets/new/js/form-validation.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/assets/new/js/jquery.validate.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/assets/new/js/jquery.metadata.js"></script>

<decorator:getProperty property="page.pageJSContent"/>

<!-- END PAGE LEVEL SCRIPTS -->


<script>

    jQuery(document).ready(function () {

        App.init(); // initlayout and core plugins

        var curWwwPath = location.href;
        var curWwwSearch = location.search;
        if (curWwwSearch.length > 0) {
            curWwwPath = curWwwPath.substr(0, curWwwPath.indexOf(curWwwSearch));
        }


        if (isRootPath()) {

            $($(".smenu")[0]).addClass("active");
        } else {
            $(".smenu").each(function (a, b) {


                var hf = $(b).find("a").attr("href");

                if (curWwwPath.indexOf(hf) >= 0) {
                    $(b).addClass("active");
                }
            });
        }

    });

    function isRootPath() {

        //获取主机地址之后的目录，如： /ems/Pages/Basic/Person.jsp
        var pathName = window.document.location.pathname;

        if (pathName.length == pathName.substr(1).indexOf('/') + 2) {
            return true;
        } else {
            return false;
        }

    }

</script>
<%--<decorator:getProperty property="page.pageJSIniteContent"/>--%>
<!-- END JAVASCRIPTS -->
<decorator:getProperty property="page.local_script"/>
</body>

<!-- END BODY -->

</html>
