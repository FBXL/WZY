<%--
  Created by IntelliJ IDEA.
  User: 16070
  Date: 2020/10/5
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
</head>
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="updateBook" method="post">
        <input type="hidden" name="bookId" value="${book.bookId}">
        <div class="form-group">
            <label for="bookName">书籍名称</label>
            <input type="text" class="form-control" name="bookName" id="bookName" value="${book.bookName}" placeholder="书籍名称" required>
        </div>
        <div class="form-group">
            <label for="bookCounts">书籍数量</label>
            <input type="text" class="form-control" name="bookCounts" id="bookCounts" value="${book.bookCounts}" placeholder="书籍数量" required>
        </div>
        <div class="form-group">
            <label for="detail">书籍详情</label>
            <input type="text" class="form-control" name="detail" id="detail" value="${book.detail}" placeholder="书籍详情" required>
        </div>
        <button type="submit" class="btn btn-default">提交</button>
        <button type="button" onclick="window.location.href='${pageContext.request.contextPath}/queryBooks'" class="btn btn-default">返回</button>
    </form>


</div>
</body>
</html>
