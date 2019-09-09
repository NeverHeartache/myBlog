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
<script type="text/javascript" src="${webRoot }/common/ckeditor5/uckeditor.js"></script>
<script type="text/javascript" src="${webRoot }/js/blogs/blogs.js"></script>
<style type="text/css">
.bTitle {
	display: inline-block;
	width: 56rem;
	height: 40px;
	line-height: 40px;
	box-sizing: border-box;
	padding-left: 16px;
	border: none;
	margin-left: 22px;
	margin-bottom: 12px;
	background-color: #efefef;
	color: #4d4d4d;
}

.ck-editor-container {
	width: 56rem !important;
	margin-left: 22px;
	height: auto;
	margin-bottom: 8px;
}
.ck-content{
	heigth: 700px !important;
	display: block;
	min-height: 700px;
}
</style>
</head>
<body>
	<%@include file="../frame/header.jsp"%>
	<div class=" content-container" style="margin-top: 74px;">
		<div class="row">
			
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
				<form name="blog-content" action="${webRoot }/api/main/releaseBlogs">
					<div class="form-group row">
						<input class="bTitle" name="article_title" placeholder="请输入标题">
					</div>
					<div class="form-group row">
						<div class="ck-editor-container">
							<div id="editor" style="height: 700px;"></div>
							<div id="references"></div>
						</div>
					</div>
					
					<div class="form-group row" style="padding-left: 22px;">
						<label for="colFormLabelSm" class="col-sm-0 col-form-label col-form-label-sm">文章标签：</label>
						<div class="col-sm-3">
							
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>