<%@tag pageEncoding="GBK"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="nav dropdown pull-right">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
    	еепР: ${sortTypes[param.sortType]} <b class="caret"></b>
    </a>
	<ul class="dropdown-menu" >
	   	<c:forEach items="${sortTypes}" var="entry">
	   		<li><a href="?sortType=${entry.key}&${searchParams}">${entry.value}</a></li>
		</c:forEach>
	</ul>
</div>