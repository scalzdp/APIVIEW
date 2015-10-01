<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en" class="no-js"> <!--<![endif]-->

<head>
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

  <decorator:head/>
</head>
<body>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/assets/new/js/jquery-1.10.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/assets/new/js/jquery-migrate-1.2.1.min.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/assets/new/js/My97DatePicker/WdatePicker.js"></script>
<%--<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/assets/new/js/form-validation.js"></script>--%>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/assets/new/js/jquery.validate.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/assets/new/js/jquery.metadata.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/assets/new/js/bootstrap-typeahead.js"></script>


<decorator:body/>
<decorator:getProperty property="page.pageJSContent"/>
<script>

    jQuery(document).ready(function() {



        $("#commentForm").validate({meta: "validate"});




    });

</script>
<decorator:getProperty property="page.pageJSIniteContent"/>
</body>
</html>