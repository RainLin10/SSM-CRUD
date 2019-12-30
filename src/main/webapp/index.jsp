<%--
  Created by IntelliJ IDEA.
  User: Rainlin
  Date: 2019/12/30
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>主页</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <%-- 引入js文件 --%>
    <script src="${APP_PATH}/static/js/jquery-1.11.0.min.js"></script>
    <%-- 引入bootstrap文件 --%>
    <link href="${APP_PATH}/static/css/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${APP_PATH}/static/css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<a href="/emp/queryEmpByPage?pn=1">员工列表</a>
</body>
</html>
