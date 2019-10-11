<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="content-header">
	<div class="ui fixed inverted menu">
			<a class="item active" href="${webRoot }/">博客首页</a> 
			<a class="item " href="${webRoot }/api/main/blogs">我的博客</a> 
			<a class="item " href="${webRoot }/api/releaseBlogPage">发布博客</a>
			<a class="item " href="${webRoot }/api/daily">我的日常</a> 
			<a class="item " href="${webRoot }/api/demo/detail">示例</a>
			<div class="right menu">
				<div class="browse item">
					<a href="#" class="browse item personalCenter"> 
						个人中心 
						<i class="dropdown icon"></i>
					</a>
			</div>
			</div>
	</div>
	<div class="ui fluid popup settings">
		<div class="ui one column relaxed equal height divided grid">
			<div class="column">
				<h4 class="ui header">Fabrics</h4>
				<div class="ui link list">
					<a class="item" href="${webRoot }/api/userLoginPage">登录</a> <a
						class="item" href="#">个人中心</a> <a class="item"
						href="${webRoot }/api/logout">退出</a>
				</div>
			</div>
		</div>
	</div>
</div>
