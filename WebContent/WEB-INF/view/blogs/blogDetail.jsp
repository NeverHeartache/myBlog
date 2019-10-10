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
<title>博客详情</title>
<%@include file="../frame/resource.jsp"%>
<%@include file="../frame/bFrame.jsp"%>
<link rel="stylesheet" type="text/css" href="${webRoot}/css/index/index.css">
<link rel="stylesheet" type="text/css" href="${webRoot}/css/semantic/semantic.min.css" >

<script type="text/javascript" src="${webRoot}/js/common/semantic/semantic.min.js"></script>
<script type="text/javascript" src="${webRoot }/common/ckeditor5/uckeditor.js"></script>
<script type="text/javascript" src="${webRoot }/js/blogs/viewBlogs.js"></script>
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

<script type="text/javascript">
var appInfo = "${webRoot}";
</script></head>
<body>
	<%@include file="../frame/header.jsp"%>
	<div class=" content-container" style="margin-top: 74px;">
		<div class="row">
			
		</div>
		<div class="row">
			<div class="col-3 cNav" style="border-right: 2px solid #5d5d5d;">
					<ul class="list-group list-group-flush">
						<c:if test="${rwFlag == 'view' }">
							<li class="list-group-item">
								<div class="card" style="width: 18rem;">
									<div class="card-body">
										<p class="card-text">${userName }</p>
									</div>
								</div>
							</li>
						</c:if>
					</ul>
			</div>
			<div class="col-9">
				<form name="blog-content" class="needs-validation">
					<div class="form-group row" style="padding-left: 22px;">
						<label for="colFormLabelSm" id="aLabel" class="col-sm-0 col-form-label col-form-label-sm">文章标签：</label>
						<div class="col-sm-3">
							
						</div>
					</div>
					<div class="row">
						<div class="">
							<div id="content" name="articleContent" style="height: 700px;">
								${article.articleContent }
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>