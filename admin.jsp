<%-- 
    Document   : admin
    Created on : 2022-6-14, 7:11:56
    Author     : li134
--%>

<%@page import="com.orm.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理员</title>
    <style>
        body{
            position: relative;
        }
        .first{
            position: absolute;
            left: 50%;
            width: 1300px;
            height: 100px;
            margin-left: -650px;
        }
        .first img{
            width: 100px;
            height: 100px;
        }
        .first h1{
            font-size: 30px;
            margin-left: 120px;
            margin-top: -80px;
        }
        .login{
            float: right;
            margin-right: 100px;
            margin-top: -50px;
        }
        .second{
            position: absolute;
            top: 150px;
            left: 50%;
            margin-left: -650px;
            width: 1300px;
            height: 50px;
            
            background-color: gray;
        }
        .second li{
            list-style: none;
            float: left;
            margin-right: 30px;
            cursor: pointer;
        }
        .third{
            position: absolute;
            top: 210px;
            left: 200px;
        }
        .forth{
            position: absolute;
            top: 250px;
            left: 120px;
        }
        .forth h3{
            float: right;
            margin-left: 100px;
        }
        .fifth{
            position: absolute;
            top: 600px;
            left: 120px;
            width: 1300px;
            height: 100px;
        }
        .title{
            width: 1300px;
            height: 30px;
            background-color: gray;
            line-height: 30px;
        }
    </style>
</head>
<body>
    <div class="first">
        <img src="img/xiaohui.png" alt="校徽">
        <h1>长春工业大学论坛</h1>
        <span class="login">你好，<a href="login.jsp">管理员</a></span>
    </div>
    <div class="second">
        <ul>
            <li onclick="window.location.href='mainInterface.jsp'">用户首页</li>
            <li onclick="window.location.href=''">个人资料</li><!--stuinfoaction-->
            <li onclick="window.location.href=''">帖子管理</li><!--findAllPost-->
            <li onclick="window.location.href='board.jsp'">板块管理</li><!--findAllPost-->
            <li>退出</li>
        </ul>
    </div>
    <div class="third">
        <form action="">
            <input type="text">
            <input type="submit" value="搜索">
        </form>
    </div>
    <div class="forth">
        <img src="img/lunbo.jpg" alt="轮播图片">
        <h3>排行榜:</h3>
    </div>
    <%
                ArrayList list=(ArrayList)session.getAttribute("board");
                if(list.isEmpty()){
            %>
                    <span>暂无板块</span>
            <%
                }else{
                    for(int i=0;i<list.size();i++){
                        Board board=(Board)list.get(i);
            %>
                        <div class="fifth">
                            <div class="title">
                                <%=board.getName()%>
                            </div>
                            <%=board.getDescription()%>
                        </div>
            <%
                    }
                }
            %>
</body>
</html>
