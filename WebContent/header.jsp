<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>码蚁商城</title>
    <!--链接外部样式-->
    <link rel="stylesheet" href="style/headerStyle.css">
    <!--设置标签图标-->
    <link href="favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" href="style/footerStyle.css">

</head>
<body>
<!--头部-->
<div id="header">
<!--头部登录，购物车-->
<div class="header_top">
        <!--中部-->
        <div class="header_top_center">
            <!--中部左侧-->
            <div class="h_top_left">
                欢迎来到码蚁商城
            </div>
            <!--中部右侧-->
            <div class="h_top_right">
            <!-- 做一个判断  判断是否有用户 -->
            <c:if test="${empty user}">
            	<a href="login.jsp">登录</a>
                <a href="regist.jsp">免费注册</a>
            </c:if>
            <c:if test="${!empty user}">
            <!-- 判断用户是否为空 然后取反 -->
            	欢迎：${user.username}
                <a href="/5-79-JavaWeb-Mystore/SignOutServlet">退出</a>
            </c:if>
                <a href="#">购物车</a>
                <a href="#">我的订单</a>
            </div>
        </div>
</div>`

<!--中部搜索-->
<div class="header_center">
    <!--版心-->
    <div class="h_c_center">

        <!--左侧logo-->
        <div class="h_c_logo">
            <img src="images/log.png" alt="">
        </div>

        <!--中部搜索-->
        <div class="h_c_search">

            <form action="#">
                <input type="text" placeholder="请输入想要的宝贝..." class="s_input">
                <input type="submit" value="搜索" class="s_button">
            </form>

            <div class="hot">
                <a href="#">新款连衣裙</a>
                <a href="#">四件套</a>
                <a href="#">潮流T恤</a>
                <a href="#">时尚女鞋</a>
                <a href="#">短裤半身裙</a>
            </div>
        </div>
        <!--右部二维码-->
        <div class="h_c_code">
            <img src="images/pcode.png" alt="">
        </div>
    </div>
</div>

<!--导航-->
 <div id="nav">
     <ul>
         <li><a href="#">首页</a></li>
         <li><a href="/5-79-JavaWeb-Mystore/GoodServlet">电脑办公</a></li>
         <li><a href="#">家具家居</a></li>
         <li><a href="#">鲜果时光</a></li>
         <li><a href="#">图书音像</a></li>
         <li><a href="#">母婴孕婴</a></li>
     </ul>
 </div>   

</div>
    