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
<script src="${webRoot}/js/login/login.js" type="text/javascript"></script>
<script type="text/javascript">
var appInfo = "${webRoot}";
$(function(){
	var msg = "<%=msgStr%>";
	if(msg != ""){
		alert(msg);
	}
});
</script>
</head>
<body>
	<%@include file="../frame/header.jsp" %>
	<div class="content-container">
		<div class="container-fluid border border-primary center-lay">
			<form action="${webRoot }/api/login" method="post">
				<div class="form-group">
					<label for="exampleInputUserName">UserName</label> 
					<input
						type="input" class="form-control" id="exampleInputUserName" name="loginName"
						aria-describedby="emailHelp" placeholder="User Name">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Password</label> 
					<input
						type="password" class="form-control" id="exampleInputPassword1" name="passWord"
						placeholder="Password">
				</div>
				<div class="form-group form-check" style="width: 50%;">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Check me
						out</label>
				</div>
				<div style="margin: 1rem;">
					<button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
				</div>
				<div style="margin: 1rem;">
					<button id="signIn" type="button" class="btn btn-success btn-lg btn-block">Sign In</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>