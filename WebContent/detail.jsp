<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商品详情</title>
    <!--链接外部样式-->
    <link rel="stylesheet" href="style/headerStyle.css">
    <!--设置标签图标-->
    <link href="favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" href="style/detail.css">
    <link rel="stylesheet" href="style/footerStyle.css">
</head>
<body>
<!--头部-->
<div id="header">
    <%@ include file="/header.jsp"%>
    <!--中部搜索-->

<!--面包屑导航-->
<div id="bread_crumb">
    <div class="bread_center">
        <a href="index.jsp">首页</a>
        <small>&gt</small>
        <a href="#">电脑办公</a>
        <small>&gt</small>
        <a href="#">笔记本电脑</a>

    </div>
</div>

<!--详情展示-->
<div id="detail_show">
    <!--两个进行平分-->
    <div class="show_left">
        <img src="images/goods/bigpic.jpg" alt="">
    </div>
    <div class="show_right">
        <h3 class="good_name">小米 红米5A 全网通版 2GB+16GB 浅蓝色 移动联通电信4G手机 双卡双待</h3>
        <div class="goods_price">
            <p class="ori_price">原价：<i>￥</i><span>18999.00</span><em></em></p>
            <p class="now_price">价格： <i>￥</i><span>16999.00</span></p>
        </div>
        <div class="goods_count">
            <lable>购买数量</lable>
            <input type="text" value="1">
        </div>
        <div class="add_cart">
            <input type="submit" value="加入购物车">
            <input type="submit" value="立即购买">
        </div>
    </div>
</div>

<!--商品详情-->
<div id="goods_detail">
    <div class="detail_header">商品详情</div>
    <div class="detail_body">
        <img src="images/pig1.jpg" alt="">
        <img src="images/pig2.jpg" alt="">
        <img src="images/pig3.jpg" alt="">
        <img src="images/pig4.jpg" alt="">
    </div>
</div>


<!--尾部-->
<div id="footer">
    <!--关于我们-->
    <div class="link">
        <a href="#">关于我们</a>
        |
        <a href="#">联系我们</a>
        |
        <a href="#">人才招聘</a>
        |
        <a href="#">商家入驻</a>
        |
        <a href="#">广告服务</a>
        |
        <a href="#">手机码蚁</a>
        |
        <a href="#">友情链接</a>
        |
        <a href="#">销售联盟</a>
        |
        <a href="#">码蚁社区
        </a>
        |
        <a href="#">码蚁公益</a>
    </div>
    <!--版权-->
    <div class="copyright">
        Copyright&nbsp;&copy;&nbsp;2017-2018&nbsp;&nbsp;码蚁My.com&nbsp;版权所有
    </div>
</div>


</body>
</html>