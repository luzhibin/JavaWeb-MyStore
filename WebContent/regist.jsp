<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>欢迎注册</title>
<link rel="stylesheet" href="style/common.css">
<link rel="stylesheet" href="style/regStyle.css">
<!--设置标签图标-->
<link href="favicon.ico" rel="shortcut icon">
<link rel="stylesheet" href="style/footerStyle.css">
</head>
<body>

	<!--注册头部-->
	<div id="reg_header">
		<div class="reg_h_center">

			<img src="images/logo.png" alt="">
			<h3>欢迎注册</h3>

			<div class="reg_h_right">
				<span>已有账户</span><a href="login.jsp">请登录</a>
			</div>
		</div>
	</div>

	<div id="reg_main">
		<div class="main_left">
			<form action="/5-79-JavaWeb-Mystore/RegistServlet" onsubmit="return checkForm()" method="post">
				<div id="form-itemGroup">
					<label for="username">用户名</label> 
					<input id="username" name="username" type="text" onblur="checkUserName()" oninput="checkUserName()" placeholder="请输入用户名...">
					<span class="default" id="nameErr">请输入6-20位的用户名</span> 
				</div>
				<div id="form-itemGroup">
                    <label for="userPasword">密码</label> 
                    <input id="userPasword" name="password" type="password" onBlur="checkPassword()" oninput="checkPassword()" placeholder="请输入密码..">
                    <span class="default" id="passwordErr">请输入8到16位的密码</span>
				</div>
				<div id="form-itemGroup">
                    <label for="userConfirmPasword">确认密码</label> 
                    <input type="password" id="userConfirmPasword" onBlur="ConfirmPassword()" oninput="ConfirmPassword()" placeholder="请再次输入密码...">
                    <span class="default" id="conPasswordErr">请再输入一遍密码</span> 
				</div>
				<div id="form-itemGroup">
                    <label for="userPhone">手机号码</label> 
                    <input type="text" id="userPhone" name="phone" onBlur="checkPhone()" oninput="checkPhone()" placeholder="请输入手机号码...">
                    <span class="default" id="phoneErr">请输入11位手机号码</span> 
				</div>
				<div class="check_box">
                    <label>验证码</label> 
                    <input type="text" placeholder="请输入验证码..." name="code">
					<img src="/5-79-JavaWeb-Mystore/Code" onclick="change(this)" alt="点击更换" title="重新获取" />
				</div>
				<div class="submit_button">
					<input type="submit" value="立即注册" >
				</div>
			</form>
		</div>
		<div class="main_right">
			<img src="images/reg_right.png" alt="">
		</div>
	</div>
<%@ include file="/footer.jsp" %>
	<script type="text/javascript">
		function change(obj) {
			obj.src = "/5-79-JavaWeb-Mystore/Code?time=" + new Date().getTime();
		}
		function checkForm() {
			var username = checkUserName();
			var password = checkPassword();
			var pwd2 = ConfirmPassword();
			var phone = checkPhone();
            return username && password && pwd2 && phone;
//          alert(nametip.value);
		}
		//验证用户名   
		function checkUserName() {
			var username2 = document.getElementById('username');
			var errname = document.getElementById('nameErr');
			var pattern = /^\w{6,20}$/; //用户名格式正则表达式：用户名要求6-20位
			if (username2.value.length == 0) {
				errname.innerHTML = "用户名不能为空"
				errname.className = "error"
				return false;
            } 
            if (!pattern.test(username2.value)) {
				errname.innerHTML = "用户名不合规范"
				errname.className = "error"
				return false;
			} else {
				errname.innerHTML = "OK"
				errname.className = "success";
				return true;
			}
		}
		//验证密码   
		function checkPassword() {
			var userpasswd = document.getElementById('userPasword');
			var errPasswd = document.getElementById('passwordErr');
			var pattern = /^\w{8,16}$/; //密码要在8-16位 
			if (!pattern.test(userpasswd.value)) {
				errPasswd.innerHTML = "密码不合规范"
				errPasswd.className = "error"
				return false;
			} else {
				errPasswd.innerHTML = "OK"
				errPasswd.className = "success";
				return true;
			}
		}
		//确认密码 
		function ConfirmPassword() {
			var userpasswd = document.getElementById('userPasword');
			var userConPassword = document.getElementById('userConfirmPasword');
			var errConPasswd = document.getElementById('conPasswordErr');
			if ((userpasswd.value) != (userConPassword.value)
					|| userConPassword.value.length == 0) {
				errConPasswd.innerHTML = "上下密码不一致"
				errConPasswd.className = "error"
				return false;
			} else {
				errConPasswd.innerHTML = "OK"
				errConPasswd.className = "success";
				return true;
			}
        }       
		//验证手机号 
		function checkPhone() {
			var userphone = document.getElementById('userPhone');
			var phonrErr = document.getElementById('phoneErr');
			var pattern = /^1[34578]\d{9}$/; //验证手机号正则表达式 
			if (!pattern.test(userphone.value)) {
				phonrErr.innerHTML = "手机号码不合规范"
				phonrErr.className = "error"
				return false;
			} else {
				phonrErr.innerHTML = "OK"
				phonrErr.className = "success";
				return true;
			}
		}
	</script>





</body>
</html>


