<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>联盟书店</title>
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

    function verifyName() {
        $.post({
            url: "${pageContext.request.contextPath}/verifyName",
            data: {'name': $("#userName").val()},
            success: function (data) {
                if (data === "ok") {
                    $("#nameInfo").css("color", "green");
                    $("#nameInfo").html(data);
                } else {
                    $("#nameInfo").css("color", "red");
                    $("#nameInfo").html("账号不存在！");
                }
            }
        })
    }

    function login() {
        var username = $("#userName").val();
        var password = $("#password").val();
        $.post({
            url: "${pageContext.request.contextPath}/login",
            data: {"name": username, "password": password},
            success: function (data) {
                console.log(data);
                if (data === "success") {
                    window.location.href = "${pageContext.request.contextPath}/queryBooks";
                } else {
                    $("#passwordInfo").css("color", "red");
                    $("#passwordInfo").html("密码错误");
                }
            }
        })

    }


</script>
<style type="text/css">
    body {
        background-color: antiquewhite;
    }

    #login {
        width: 400px;
        height: 110px;
        margin: 100px auto;
        background-color: aquamarine;
    }

    #title {
        color: black;
        font-size: 40px;
    }

    #nameInfo, #passwordInfo {
        font-size: 15px;
    }

    h3 {
        height: 80px;
        width: 400px;
        padding-top: 20px;
        margin: 100px auto;
        background-color: burlywood;
        text-align: center;
        border-radius: 20px;
    }

</style>

<body>
<h3>
    <span id="title">欢迎来到联盟书店</span>
</h3>
<div id="login">
    <form action="" method="post">
        <p>账&nbsp;&nbsp;号：<input type="text" name="userName" id="userName" placeholder="请输入账号" onblur="verifyName()">
            <span id="nameInfo"></span></p>
        <p>密&nbsp;&nbsp;码：<input type="password" name="passWord" id="password" placeholder="请输入密码" autocomplete>
            <span id="passwordInfo"></span></p>
        <input style="margin-left: 20% " type="button" value="登录" onclick="login()">
        <a href="register.jsp">没有账号？去注册</a>
    </form>
</div>
</body>
</html>
