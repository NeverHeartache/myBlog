<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="webRoot" value="${pageContext.request.contextPath}"></c:set>
<%
	Object msg = request.getAttribute("msg");
	String msgStr = "";
	if(msg != null){
		msgStr = msg.toString();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="../frame/resource.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<script type="text/javascript" src="${webRoot }/js/register/register.js"></script>
<script>
	var appInfo = '${webRoot}';
	var msg = "<%=msgStr%>";
	$(function(){		
		if(msg != ""){
			alert(msg);
		}
	});
</script>
<style>
body{
	background-image: url(../public/img/login/bg.png);
}
.center-lay{
	margin-top:11rem;
	width: 46%;
	height: 50%;
	border-radius:15px;
	background-image: url(../public/img/login/topbg.png);
}
.btn-block{
	width: 45%!important;
	margin-left: 23%
}
</style>
</head>
<body  style="background-color: rgb(179, 223, 240);">
	<%@include file="../frame/header.jsp" %>
	<input id="hiddenField" name="" value="${msgStr }">
	<div class="content-container">
		<div class="ui grid">
			<div class="row"></div>
			<div class="row"></div>
			<div class="row"></div>
			<div class="row">
				<div class="two wide column"></div>
				<div class="nine wide column">
				<!-- action="${webRoot }/api/signIn" method="post" -->
					<div class="ui segment">
						<center>						
							<h3>欢迎注册博客</h3>
						</center>
					</div>
					<div class="ui segment">
						<form class="ui equal width form">
						<div class="fields">
							<div class="field">
								<label>用户名：</label>
								<input type="text" id="loginName" name="loginName" placeholder="用户名">						
							</div>
							<div class="field">
								<label>密码：</label> 
								<input type="password" id="passWord" name="passWord" placeholder="密码">
							</div>
						</div>
						<div class="fields">
							<div class="field">
								<label>手机号：</label> 
								<input
									type="text" id="userPhone" name="userPhone" placeholder="手机号">
							</div>
							<div class="field">
								<label>性别：</label>
								<select id="userSex" name="userSex">
									<option value="0">保密</option>
									<option value="1">男</option>
									<option value="2">女</option>
								</select>
							</div>
						</div>
						<div>
							<center>
								<button id="signUp" class="ui primary button">立即注册</button>
								<button class="ui button" id="backToLogin">返回登陆</button>
							</center>
						</div>
					</form>
					</div>
				</div>
				<div class="five wide column"></div>
			</div>
		</div>
	</div>
</body>
</html>