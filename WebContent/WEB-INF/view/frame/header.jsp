<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="content-header">
	<div class="ui secondary menu">
			<a class="item active" href="${webRoot }/">博客首页</a> 
			<a class="item " href="${webRoot }/api/main/blogs">我的博客</a> 
			<a class="item " href="${webRoot }/api/releaseBlogPage">发布博客</a>
			<a class="item " href="${webRoot }/api/daily">我的日常</a> 
			<a class="item " href="${webRoot }/api/demo/detail">示例</a>
			<div class="right menu">
				<div class="browse item">
					<a href="#" class="browse item"> 
						<img src="${webRoot }/images/plant.jpg" class="img-circle" 
									alt="parson-img" style="width: 24px; height: 24px;"> 
						<i class="dropdown icon"></i>
					</a>
				<div class="ui fluid popup bottom left transition hidden" style="padding: 0; margin-right: 70px;">
					<div class="ui four column relaxed equal height divided grid">
						<div class="column">
							<a class="item" href="${webRoot }/api/userLoginPage">登录</a>
							<a class="item" href="#">个人中心</a> <a
								class="item" href="${webRoot }/api/logout">退出</a>
						</div>
					</div>
				</div>
			</div>
			</div>
	</div>
</div>