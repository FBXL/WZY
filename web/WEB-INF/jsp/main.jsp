<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<head>
    <title>书籍信息</title>
</head>
<body>
<%--中心容器--%>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>展示所有书籍信息</small>
                </h1>
                    <a href="#" style="text-decoration: none">欢迎，${name}</a>
                    <a href="${pageContext.request.contextPath}/logout" style="text-decoration: none">退出</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" style="text-decoration:none "
                   href="${pageContext.request.contextPath}/toAddBook">新增书籍</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <form class="form-inline" action="queryBookByName" method="post" style="float: right">
                    <input type="text" name="bookName" class="form-control" placeholder="请输入要查询的书籍名称">
                    <input type="submit" class="btn btn-primary">
                </form>
            </div>

        </div>

    </div>
    <div class="row clearfix">
        <div class="col-md-12 colunn">
            <table class="table table-hover table-striped ">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${bookList}">
                    <tr>
                        <td>${book.bookId}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a class="btn btn-primary"
                               href="${pageContext.request.contextPath}/toUpdate?bookId=${book.bookId}">编辑</a>
                            <a class="btn btn-primary"
                               href="${pageContext.request.contextPath}/deleteBookById/${book.bookId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>

</div>

</body>
<script type="text/javascript">
</script>
</html>
