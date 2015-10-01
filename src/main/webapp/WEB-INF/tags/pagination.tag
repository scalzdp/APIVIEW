<%@ tag pageEncoding="UTF-8" isELIgnored="false" %>
<%@ tag import="java.util.List" %>
<%@attribute name="pageCommand" type="com.scal.mo1234.web.command.PageCommand" required="true" %>
<%@attribute name="showFlag" required="false" type="java.lang.Boolean" %>
<%

    //if (null != count && count.intValue() > 0) {
    //    pageCommand.setCount(count);
    pageCommand.setPageUrl(request.getQueryString());
    //    pageCommand.setCurrentPage(currentPage);

%>
<%--<div class="paging">--%>

<%--<a href="index?<%=pageCommand.generateUrl(pageCommand.getPreviousPageNumber())%>">&laquo;前一页</a>--%>
<%--<%--%>
<%--List<Integer> list = pageCommand.getPageNumList();--%>
<%--for (Integer i : list) {--%>
<%--if (i == pageCommand.getCurrentPage()) {--%>
<%--%>--%>
<%--<span class="on"><%=i%></span>--%>
<%--<% } else {--%>
<%--%>--%>
<%--<a href="index?<%=pageCommand.generateUrl(i)%>"><%=i%>--%>
<%--</a>--%>
<%--<%--%>
<%--}--%>
<%--}--%>
<%--%>--%>
<%--<a href="index?<%=pageCommand.generateUrl(pageCommand.getNextPageNumber())%>">后一页&raquo;</a>--%>

<%--<label>共<%=pageCommand.getLastPageNumber()%>页&nbsp;&nbsp;&nbsp;&nbsp;共<%=pageCommand.getCount()%>条--%>

<%--</label>--%>

<%--</div>--%>
<%--<%//}%>--%>
<div class="row-fluid">
    <div class="span6">
        <div class="dataTables_info" id="sample_1_info">总记录数为 <%=pageCommand.getCount()%> 条</div>
    </div>
    <div class="span6">
        <div class="dataTables_paginate paging_bootstrap pagination">
            <ul>
                <li class="prev"><a href="index?<%=pageCommand.generateUrl(pageCommand.getPreviousPageNumber())%>">←
                    <span class="hidden-480"> 上一页 </span></a></li>
                <%
                    List<Integer> list = pageCommand.getPageNumList();
                    for (Integer i : list) {
                        if (i == pageCommand.getCurrentPage()) {
                %>
                <li class="active"><a href="index?<%=pageCommand.generateUrl(i)%>"><%=i%>
                </a></li>
                <% } else {
                %>
                <li><a href="index?<%=pageCommand.generateUrl(i)%>"><%=i%>
                </a></li>

                <%
                        }
                    }
                %>
                <li class="next"><a href="index?<%=pageCommand.generateUrl(pageCommand.getNextPageNumber())%>"><span
                        class="hidden-480"> 下一页 </span> → </a></li>
            </ul>
        </div>
    </div>
</div>
