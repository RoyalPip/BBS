<%-- 
    Document   : login
    Created on : 2022-6-13, 20:26:12
    Author     : li134
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <style>
        h1{
            display: inline-block;
            margin-top: 100px;
            margin-left: 550px;
        }
        .student{
            float: left;
            width: 200px;
            height: 200px;
            border: 1px solid gray;
            margin-top: 100px;
            margin-left: 400px;
        }
        .admin{
            float: right;
            width: 200px;
            height: 200px;
            border: 1px solid gray;
            margin-top: 100px;
            margin-right: 400px;
        }
    </style>
</head>
<body>
    <h1>Sorry,您还没有登录，请登录</h1>
    <div class="select">
        <div class="student">
            <h3>会员登录</h3>
            <form action="student">
                学号：<input type="text" name="number">
                <br>
                密码：<input type="text" name="password">
                <br>
                <input type="submit" value="登录">
            </form> 
        </div>
        <div class="admin">
            <h3>管理员登录</h3>
            <form action="admin">
                姓名：<input type="text" name="name">
                <br>
                密码：<input type="text" name="password">
                <br>
                <input type="submit" value="登录">
            </form>
        </div>
    </div>
</body>
</html>
