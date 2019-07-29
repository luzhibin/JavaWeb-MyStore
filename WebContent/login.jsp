<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
</head>
<style>
    *{/*请空所有边距*/
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    .header{/*设置头部高度*/
        height: 88px;
    }
    .header .h_center{/*设置头部中间显示logo*/
        width: 1200px;/*宽度1200像素*/
        height: 88px;/*高度88*/
        margin: 0 auto;/*居中显示*/
    }
    .header .h_center img{
        float: left;/*设置浮动，和下面文件保持在一行*/
        margin-top: 5px;
    }
    .header .h_center p{
        float: left;/*设置浮动和上面图片保持在一行*/
        text-align: center;/*文字居中*/
        width: 880px;/*设置宽度*/
        font-size: 10px;/*设置字体大小*/
        border: 1px solid #ffb4a8;/*设置边框1像素，实线，颜色*/
        padding: 3px;/*设置内边距为3*/
        margin-top: 20px;/*距离顶部3距离*/
        margin-left: 80px;/*距离左侧80*/
        color: #6C6C6C;/*设置文字颜色*/
        background: #fef2f2;/*设置背景颜色*/
    }
    .login_body{
        height: 600px;/*高度600*/
        /*没有设置宽度，默认和窗口的宽度一样*/
        /*设置背景*/
        background-image: url("images/login_bg.png");
        background-position: center center;
    }

    .login_body .login_center{
        width: 1200px;
        height: 600px;
        margin: 0 auto;/*居中*/
        overflow: hidden;/*清除浮动*/
    }
    .login_center .login_bg{
        width: 350px;
        height: 351px;
        background: rgba(255,255,255,0.95);
        margin-left: 850px;
        margin-top: 120px;
        padding: 25px;
    }

    #login div{
        height: 40px;/*高度为40*/
        margin-top: 20px;/*距离顶部20大小*/
    }
    #login span{/*设置用户名和密码的两个小图标*/
        width: 40px;
        height: 40px;
        display: inline-block;/*设置为内联，可以设置大小*/
        background: #ccc;
        float: left;/*设置左浮动，可以和input在一平齐显示*/
        border: 1px #ccc solid;/*设置边框*/
        border-right:none;/*设置右边框没有*/
    }
    #login .username span{/*设置用户名图标居中显示*/
        background-image: url("images/userName_Icon.png");
        background-position: center center;
    }
    #login .password span{/*设置密码图标居中显示*/
        background-image: url("images/password_Icon.png");
        background-position: center center;
    }
    #login input{/*设置输入框*/
        height: 40px;
        float: left;
        border: 1px #ccc solid;
        width: 260px;
    }
    #login .login_btn input{/*设置登录按钮*/
        background: #f40;
        color: white;
        border-radius: 2px;
        width: 300px;
    }

    .forgotPwd{/*设置忘记密码div*/
        margin-top: 60px;
        text-align: right;
    }
    .forgotPwd a{/*设置链接样式*/
        text-decoration:none;
        color: #666;
        font-size: 14px;
    }
    .forgotPwd a:hover{/*鼠标移入样式*/
        color: #ff4400;
    }

    #footer{
        width: 1200px;
        margin: 0 auto;
        margin-top: 20px;

    }
    #footer .link{
        text-align: center;

    }
    #footer a{
        text-decoration: none;
        color: #666;
        margin-left: 5px;
        margin-right: 5px;
    }
    #footer .copyright{
        text-align: center;
        margin-top: 10px;
    }



</style>

<body>

<!--头部-->
<div class="header">
    <div class="h_center">
        <img src="images/Myxq.jpg" alt="">
        <p>为确保您账户的安全及正常使用，依《网络安全法》相关要求，6月1日起会员账户需绑定手机。如您还未绑定，请尽快完成，感谢您的理解及支持！</p>
    </div>
</div>

<!--体部-->
<div class="login_body">
    <!--中部-->
    <div class="login_center">
        <!--登录背景-->
        <div class="login_bg">
            <h4>忘记密码</h4>
            <form action="/5-79-JavaWeb-Mystore/LoginServlet"  id="login" method="post">
                <!--用户名-->
               <div class="username">
                   <span></span>
                   <input type="text" placeholder="请输入用户名..." name="username">
                </div>
                <!--密码-->
                <div class="password">
                    <span></span>
                    <input type="text" name="password" placeholder="请输入密码...">
                </div>
                <div class="login_btn">
                    <input type="submit" class="login_btn" value="登录">
                </div>
            </form>
            <div class="forgotPwd"><!--忘记密码-->
                <a href="">忘记密码</a> <a href="">忘记会员名</a> <a href="">免费注册</a>
            </div>
        </div>
    </div>
</div>
<%@include file="/footer.jsp" %>
</body>
</html>