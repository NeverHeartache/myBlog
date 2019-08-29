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
<link href="${webRoot}/css/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="${webRoot}/css/common.css" rel="stylesheet">

<script src="${webRoot}/js/common/jquery-3.3.1.min.js"></script>
<script src="${webRoot}/js/common/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<script>
	var msg = "<%=msgStr%>";
	if(msg != ""){
		alert(msg);
	}
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
<body>
	<%@include file="../frame/header.jsp" %>
	<div class="content-container">
		<div class="container-fluid border border-primary center-lay">
			<form action="${webRoot }/api/signIn" method="post">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="exampleInputUserName">用户名：</label>
						<input
							type="input" class="form-control" id="exampleInputUserName" name="loginName"
							aria-describedby="emailHelp" placeholder="用户名">						
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputPassword1">密码：</label> 
						<input
							type="password" class="form-control" id="exampleInputPassword1" name="passWord"
							placeholder="密码">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="userPhone">手机号：</label> 
						<input
							type="input" class="form-control" id="userPhone" name="userPhone"
							aria-describedby="emailHelp" placeholder="手机号">
					</div>
					<div class="form-group col-md-6">
						<label for="userSex">性别：</label> 
						<select id="userSex" name="userSex" class="form-control" >
							<option value="0">保密</option>
							<option value="1">男</option>
							<option value="2">女</option>
						</select>
					</div>
				</div>
				<div class="form-group form-check" style="width: 50%; height: 8px;">
				</div>
				<div style="margin: 1rem;">
					<button type="submit" class="btn btn-primary btn-lg btn-block">注册</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>