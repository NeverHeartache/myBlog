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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<%@include file="../frame/resource.jsp" %>
<script type="text/javascript">
var appInfo = "${webRoot}";
$(function(){
	var msg = "<%=msgStr%>";
	if(msg != ""){
		alert(msg);
	}
});
</script>
<script src="${webRoot}/js/login/login.js" type="text/javascript"></script>
</head>
<body  style="background-color: rgb(179, 223, 240);">
	<%@include file="../frame/header.jsp" %>
	<div class="content-container">
		<div class="ui grid">
			<div class="row"></div>
			<div class="row"></div>
			<div class="row"></div>
			<div class="row">
				<div class="two wide column"></div>
				<div class="nine wide column">
					<div class="ui segment">
						<center>						
							<h3>欢迎回来</h3>
						</center>
					</div>
					<div class="ui segment">
						<form class="ui form">
								<div class="field">
									<label>用户名：</label> 
									<input id="exampleInputUserName" type="text" name="loginName" placeholder="用户名">
								</div>
								<div class="field">
									<label>密码：</label> 
									<input id="exampleInputPassword1" type="password" name="passWord" placeholder="密码">
								</div>
								<div class="field">
									<div class="ui checkbox contract">
										<input type="checkbox" tabindex="0" class="hidden"> 
										<label>记住登陆用户名和密码</label>
									</div>
								</div>
								<center>
									<button id="loginBtn" class="ui primary button">登陆</button>
									<button id="signIn" class="ui button">注册</button>
								</center>
						</form>
					</div>
					
				</div>
				<div class="five wide column"></div>
			</div>
			
		</div>
	</div>
</body>
</html>