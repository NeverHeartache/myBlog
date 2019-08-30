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
	margin-bottom: 22px;
}
</style>
</head>
<body>
	<%@include file="../frame/header.jsp"%>
	<div class="container content-container">
		<div class="row">
			<div class="col-3" style="border-right: 2px solid #5d5d5d;">
				<div class="card"
					style="width: 18rem; margin-left: 1rem; height: auto;">
					<div class="card-header"
						style="text-align: center; font-weight: 600;">操作</div>
					<ul class="list-group list-group-flush ">
						<li class="list-group-item">
							<button type="button" class="btn btn-outline-primary"
								style="width: 95%;">发布博客</button>
						</li>
						<li class="list-group-item">
							<button type="button" class="btn btn-outline-info"
								style="width: 95%;">编辑博客</button>
						</li>
						<li class="list-group-item">
							<button type="button" class="btn btn-outline-dark"
								style="width: 95%;">删除博客</button>
						</li>
						<li class="list-group-item">
						</li>
					</ul>
				</div>
			</div>
			
			<div class="col-9">
				<div class="row">
					<input class="bTitle" name="article_title" placeholder="请输入标题">
					
					<div class="ck-editor-container">
						<div id="editor" style="height: 700px;">
							<h2>The three greatest things you learn from traveling</h2>

							<p>Like all the great things on earth traveling teaches us by
								example. Here are some of the most precious lessons I’ve learned
								over the years of traveling.</p>

							<h3>Appreciation of diversity</h3>

							<p>
								Getting used to an entirely different culture can be
								challenging. While it’s also nice to learn about cultures online
								or from books, nothing comes close to experiencing <a
									href="https://en.wikipedia.org/wiki/Cultural_diversity">cultural
									diversity</a> in person. You learn to appreciate each and every
								single one of the differences while you become more culturally
								fluid.
							</p>

							<figure class="image image-style-side">
							<img src="${webRoot }/common/ckeditor5/sample/img/umbrellas.jpg"
								alt="Three Monks walking on ancient temple."> <figcaption>Leaving
							your comfort zone might lead you to such beautiful sceneries like
							this one.</figcaption> </figure>

							<h3>Confidence</h3>

							<p>Going to a new place can be quite terrifying. While change
								and uncertainty makes us scared, traveling teaches us how
								ridiculous it is to be afraid of something before it happens.
								The moment you face your fear and see there was nothing to be
								afraid of, is the moment you discover bliss.</p>
						</div>

						<div id="references">

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>