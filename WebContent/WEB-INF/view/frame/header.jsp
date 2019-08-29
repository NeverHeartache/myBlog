<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<div class="content-header">
<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
	<a class="navbar-brand " href="${webRoot }/">博客首页</a>
	<a class="navbar-brand " href="${webRoot }/main/blogs">我的博客</a>
	<a class="navbar-brand " href="${webRoot }/api/releaseBlogPage">发布博客</a>
	<a class="navbar-brand " href="${webRoot }/api/daily">我的日常</a>
	<a class="nav-space""></a>
	<a class="navbar-brand " href="${webRoot }/api/demo/detail">示例</a>
	<div class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown">
			<img src="${webRoot }/images/plant.jpg" class="img-circle" alt="parson-img" style="width: 24px; height: 24px;">
			<i class="icon-submenu fa fa-angle-down"></i>
		</a>
		<div class="navbar-right dropdown-menu" aria-labelledby="" style="padding: 0; margin-right: 70px;">
			<a class="dropdown-item" href="${webRoot }/api/userLoginPage">登录</a> 
			<a class="dropdown-item" href="#">个人中心</a>
			<a class="dropdown-item" href="${webRoot }/api/logout">退出</a> 
		</div>
	</div>
</nav>
</div>