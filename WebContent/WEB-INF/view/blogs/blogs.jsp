<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="webRoot" value="${pageContext.request.contextPath}"></c:set>
<%
	request.setCharacterEncoding("UTF-8");
	String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布博客</title>
<%@include file="../frame/resource.jsp"%>
<%@include file="../frame/bFrame.jsp"%>
<link rel="stylesheet" type="text/css" href="${webRoot}/css/index/index.css">

<script type="text/javascript" src="${webRoot }/js/blogs/blogs.js"></script>
<style type="text/css">
.bTitle {
	max-width: 56rem;
}

.ck-editor-container {
	width: 56rem !important;
	height: auto;
	margin-bottom: 8px;
}
.ck-content{
	heigth: 700px !important;
	display: block;
	min-height: 700px;
}
</style>

<script type="text/javascript">
var appInfo = "${webRoot}";
</script>
</head>
<body>
	<%@include file="../frame/header.jsp"%>
	<div class="content-container" style="">
		<div class="ui grid">
			<div class="row">
				<div class="two wide column">
					<div class="ui grid">
						<div class="row">
								<button class="fluid ui button" id="releaseBlog" >发布博客</button>
						</div>
						<div class="row">
								<button class="fluid ui button">编辑博客</button>
						</div>
						<div class="row">
								<button class="fluid ui button">删除博客</button>
						</div>
					</div>
				</div>
				<div class="twelve wide column">
					<form name="blog-content" class="ui form">
					<div class="field">
						<input type="text" class="bTitle" id="articleName" name="articleName" placeholder="请输入标题">
					</div>
					<div class="inline field">
						<label id="aLabel" class="">文章标签：</label>
						<select class="ui dropdown selection" id="sortArticleId" name=sortArticleId style="">
							<option value="">分类</option>
							<option value="1">科技</option>
							<option value="2">艺术</option>
							<option value="3">生活</option>
							<option value="4">历史</option>
							<option value="5">文学</option>
							<option value="6">其他</option>
						</select>
					</div>
					<div class="field">
						<div class="ck-editor-container">
							<div id="editor" name="articleContent" style="height: 700px;"></div>
							<div id="references" ></div>
						</div>
					</div>
				</form>
				</div>
				<div class="two wide column"></div>
			</div>
		</div>
		<div class="row">
			<div class="col-3 cNav" style="border-right: 2px solid #5d5d5d;">
				<div class="card"
					style="width: 18rem; margin-left: 1rem; height: auto;">
					<div class="card-header"
						style="text-align: center; font-weight: 600;">操作</div>
					<ul class="list-group list-group-flush ">
						<li class="list-group-item">
							<button id="releaseBlog" type="button" class="btn btn-outline-primary"
								style="width: 95%;">发布博客</button>
						</li>
						<li class="list-group-item">
							<button id="editBlog" type="button" class="btn btn-outline-info"
								style="width: 95%;">编辑博客</button>
						</li>
						<li class="list-group-item">
							<button id="deleteBlog" type="button" class="btn btn-outline-dark"
								style="width: 95%;">删除博客</button>
						</li>
						<li class="list-group-item">
						</li>
					</ul>
				</div>
			</div>
			<div class="col-9">
				
			</div>
		</div>
	</div>
</body>
</html>