<%--
  Created by IntelliJ IDEA.
  User: Rainlin
  Date: 2019/12/30
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>员工</title>
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
<!-- 搭建显示页面 -->
<div class="container">
    <!-- 标题 -->
    <div class="row">
        <div class="col-md-12">
            <h1>员工信息管理系统</h1>
        </div>
    </div>
    <!-- 新增 删除 按钮 -->
    <div class="row">
        <div class="col-md-4 col-md-offset-8">
            <button type="button" class="btn btn-primary">新增</button>
            <button type="button" class="btn btn-danger">删除</button>
        </div>
    </div>
    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-striped">
                <tr>
                    <th>ID</th>
                    <th>empname</th>
                    <th>gender</th>
                    <th>email</th>
                    <th>deptName</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${page.list }" var="emp">
                    <tr>
                        <th>${emp.emp_id }</th>
                        <th>${emp.emp_name }</th>
                        <th>${emp.gender=="M"?"男":"女" }</th>
                        <th>${emp.email }</th>
                        <th>${emp.department.dept_name }</th>
                        <th>
                            <button type="button" class="btn btn-primary btn-sm">
                                修改 <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                            </button>
                            <button type="button" class="btn btn-danger btn-sm">
                                删除 <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                            </button>
                        </th>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <!-- 显示分页信息 -->
    <div class="row">
        <!-- 分页文字信息 -->
        <div class="col-md-6">
            当前第${page.pageNum }页,总${page.pages }页,总共有${page.total }条记录
        </div>
        <!-- 分页条信息 -->
        <div class="col-md-6">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li><a href="/emp/queryEmpByPage?pn=1">首页</a></li>
                    <c:if test="${page.hasPreviousPage }">
                        <li><a href="/emp/queryEmpByPage?pn=${page.pageNum-1}" aria-label="Previous"> <span
                                aria-hidden="true">&laquo;</span>
                        </a></li>
                    </c:if>

                    <c:forEach items="${page.navigatepageNums }" var="currentPageNum">
                        <c:if test="${currentPageNum == page.pageNum }">
                            <li class="active"><a href="#">${currentPageNum}</a></li>
                        </c:if>
                        <c:if test="${currentPageNum != page.pageNum }">
                            <li><a href="/emp/queryEmpByPage?pn=${currentPageNum}">${currentPageNum}</a></li>
                        </c:if>
                    </c:forEach>

                    <c:if test="${page.hasNextPage }">
                        <li><a href="/emp/queryEmpByPage?pn=${page.pageNum+1}" aria-label="Next"> <span
                                aria-hidden="true">&raquo;</span>
                        </a></li>
                    </c:if>
                    <li><a href="/emp/queryEmpByPage?pn=${page.pages}">末页</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
</body>
</html>
