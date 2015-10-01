<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<tr class="head">
  <th><a href="" class="logo">CC任务管理平台</a></th>
  <td>
    <div class="main-nav">
      <%--<ul id="J_B_main_block">--%>
        <%--<li><a href="#">导航1</a></li>--%>
        <%--<li><a href="#">导航二</a></li>--%>
        <%--<li><a href="#">导航三</a></li>--%>
        <%--<li><a href="#">导航四</a></li>--%>
      <%--</ul>--%>
    </div>
    <div class="login_info">
      <a href="javascript:void(0)" class="mr10">${sessionScope.user.userName}</a>
      <%--<a href="#" class="mr10 various fancybox.iframe" >[修改密码]</a>--%>
      <a href="${pageContext.request.contextPath}/login" class="mr10" onclick="return confirm('你确定要退出吗?')">[注销]</a>
    </div>
  </td>
</tr>