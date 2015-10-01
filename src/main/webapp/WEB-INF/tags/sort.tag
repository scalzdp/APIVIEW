<%@ tag pageEncoding="UTF-8" isELIgnored="false" %>
<%@attribute name="sortCommand" type="com.scal.mo1234.web.command.SortCommand" required="true" %>
<%@attribute name="colName" type="java.lang.String" %>
<%@attribute name="colValue" type="java.lang.String" %>
<%

    sortCommand.setPageUrl(request.getQueryString());

%>

<th class="<%=sortCommand.generateSortClass(colValue)%>">
    <a href="index?<%=sortCommand.generateUrl(colValue)%>"><%=colName%></a>
</th>