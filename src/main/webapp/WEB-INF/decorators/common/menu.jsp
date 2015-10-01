<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<th class="ch-left-nav">


    <h3><a href="javascript:;">任务管理</a></h3>
    <ul>
        <li><a href="${ctx}/tasks/index">任务列表</a></li>
        <li><a href="${ctx}/tasks/create">添加任务</a></li>
    </ul>
    <c:choose>
        <%--<c:when test="${sessionScope.user.role == RoleEnum.ADMIN }">--%>
        <c:when test="${sessionScope.user.role == 'ADMIN' }">
            <h3><a href="javascript:;">用户管理</a></h3>
            <ul>
                <li><a href="${ctx}/users/index">用户列表</a></li>
                <li><a href="${ctx}/users/create">添加用户</a></li>
            </ul>
            <h3><a href="javascript:;">科室管理</a></h3>
            <ul>
                <li><a href="${ctx}/departments/index">科室列表</a></li>
                <li><a href="${ctx}/departments/create">添加科室</a></li>
            </ul>
            <h3><a href="javascript:;">提醒配置管理</a></h3>
            <ul>
                <li><a href="${ctx}/reminds/index">配置列表</a></li>
                <li><a href="${ctx}/reminds/create">添加配置</a></li>
            </ul>
        </c:when>
    </c:choose>

</th>