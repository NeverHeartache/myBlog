<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="webRoot" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
<%@ include file="../frame/resource.jsp" %>
</head>
<body>
	<%@include file="../frame/header.jsp" %>
	<div class="container">
		<!-- 分割线 -->
		<hr class="hr_1">
		Bigname Technology World !
		<hr class="hr_2">
		<div class="row">
			<!-- 文章列表 -->
			<div class="col-xs-9">
				<div class="list-group div_article">
					<!-- 子头栏 -->
					<a href="#" class="list-group-item active item_article_first">
						<h4 class="list-group-item-heading">My Life, Like Sun!</h4>
					</a>
					<!-- 文章列表 -->
					<div class="list-group-item item_article">
						<div class="row">
							<div class="div_center col-xs-9">
								<div class="list-group-item-heading div_article_title">
									<strong> Android框架设计理念 </strong>
								</div>
								<p class="list-group-item-text div_article_content">
									所有设计源于生活，框终点在于分层、层与层之间如何交流。</p>
							</div>
							<!-- 右侧图片，信息 -->
							<div class="col-xs-3 div_right_info">
								<img class="iv_article img-rounded" src="${webRoot}/images/icons/book_green.png">
							</div>
						</div>
					</div>
					<div class="list-group-item item_article">
						<div class="row">
							<div class="div_center col-xs-9">
								<div class="list-group-item-heading div_article_title">
									<strong> Android框架设计理念 </strong>
								</div>
								<p class="list-group-item-text div_article_content">
									所有设计源于生活，框终点在于分层、层与层之间如何交流。 所有设计源于生活，框终点在于分层、层与层之间如何交流。
									所有设计源于生活，框终点在于分层、层与层之间如何交流。</p>
							</div>
							<!-- 右侧图片，信息 -->
							<div class="col-xs-3 div_right_info">
								<img class="iv_article img-rounded" src="${webRoot}/images/icons/book_green.png">
							</div>
						</div>
					</div>
					<div class="list-group-item item_article">
						<div class="row">
							<div class="div_center col-xs-9">
								<div class="list-group-item-heading div_article_title">
									<strong> Android框架设计理念 </strong>
								</div>
								<p class="list-group-item-text div_article_content">
									所有设计源于生活，框终点在于分层、层与层之间如何交流。 所有设计源于生活，框终点在于分层、层与层之间如何交流。
									所有设计源于生活，框终点在于分层、层与层之间如何交流。 所有设计源于生活，框终点在于分层、层与层之间如何交流。
									所有设计源于生活，框终点在于分层、层与层之间如何交流。</p>
							</div>
							<!-- 右侧图片，信息 -->
							<div class="col-xs-3 div_right_info">
								<img class="iv_article img-rounded" src="${webRoot}/images/icons/book_green.png">
							</div>
						</div>
					</div>
					<div class="list-group-item item_article">
						<div class="row">
							<div class="div_center col-xs-9">
								<div class="list-group-item-heading div_article_title">
									<strong> Android框架设计理念 </strong>
								</div>
								<p class="list-group-item-text div_article_content">
									所有设计源于生活，框终点在于分层、层与层之间如何交流。 所有设计源于生活，框终点在于分层、层与层之间如何交流。
									所有设计源于生活，框终点在于分层、层与层之间如何交流。 所有设计源于生活，框终点在于分层、层与层之间如何交流。
									所有设计源于生活，框终点在于分层、层与层之间如何交流。 所有设计源于生活，框终点在于分层、层与层之间如何交流。
									所有设计源于生活，框终点在于分层、层与层之间如何交流。 所有设计源于生活，框终点在于分层、层与层之间如何交流。</p>
							</div>
							<!-- 右侧图片，信息 -->
							<div class="col-xs-3 div_right_info">
								<img class="iv_article img-rounded" src="${webRoot}/images/icons/book_green.png">
								<div>2017/12/9 12:09</div>
							</div>
						</div>
					</div>
				</div>
			</div>
</body>
</html>