<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>联盟书店注册</title>
</head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

    function verifyName(){
        let name = $("#userName").val();
        console.log(name);
        $.post({
            url: "${pageContext.request.contextPath}/verifyName",
            data:{'name':name},
            success:function (data) {
                if (data === "ok"){
                    $("#nameInfo").css("color","red");
                    $("#nameInfo").html("用户名已存在！");
                }else{
                    $("#nameInfo").css("color","green");
                    $("#nameInfo").html("√");
                }
            }
        })
    }
    function verifyPassword() {
        let p1 = $("#password1").val();
        let p2 = $("#password2").val();
        if(p1 != p2 ){
            $("#passwordInfo2").css("color","red");
            $("#passwordInfo2").html("两次密码不一样");
        }else {
            $("#passwordInfo2").css("color","green");
            $("#passwordInfo2").html("√");
        }
    }
    function toLogin() {
        window.location.href="${pageContext.request.contextPath}/index.jsp";
    }

</script>
<style type="text/css">
    body {
        background-color: antiquewhite;
    }

    #login {
        width: 400px;
        height: 150px;
        margin: 100px auto;
    }

    #title {
        color: black;
        font-size: 40px;
    }
    #nameInfo,#passwordInfo{
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
    <form action="${pageContext.request.contextPath}/register" method="post">
        <p>账&nbsp;&nbsp;&nbsp;&nbsp;号:&nbsp;&nbsp;&nbsp;<input type="text" name="name" id="userName" placeholder="请输入账号" onblur="verifyName()" required="required">
            <span id="nameInfo"></span></p>
        <p>密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;&nbsp;&nbsp;<input type="password" name="password" id="password1" placeholder="请输入密码" required="required" autocomplete>
            <span id="passwordInfo1"></span></p>
        <p>确认密码:<input type="password" name="passWord2" id="password2" placeholder="请确认密码" required="required" autocomplete onblur="verifyPassword()">
            <span id="passwordInfo2"></span></p>
        <input style="margin-left: 10% " type="submit" value="注册" >
        <button style="margin-left: 20% " onclick="toLogin()" >返回登录</button>
    </form>
</div>
</body>
</html>
