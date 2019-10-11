<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="webRoot" value="${pageContext.request.contextPath}"></c:set>
<%
	String webRoot = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ webRoot + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人博客</title>
<%@include file="resource.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${webRoot}/css/index/index.css">
<script src="${webRoot}/js/index/index.js"></script>
<script type="text/javascript">
	var appInfo = "${webRoot}";
	$(function() {

	});
</script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="content-container">
		<div class="ui grid">
			<div class="row">
				<div class="twelve wide column">
					<div class="ui grid">
						<c:forEach var="blog" items="${blogs }">
							<div class="row">
								<div class="ui divided items">
									<div class="item">
										<div class="content">
											<a class="header"
												href="${webRoot}/api/main/viewBlog?articleId=${blog.articleId }">
												${blog.articleName } </a>
											<div class="meta">
												<span class="cinema">详细信息</span>
											</div>
											<div class="description">
												<p>1</p>
											</div>
											<div class="extra">
												<div class="ui tag label ">Limited</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="four wide column">
					<div class="">
						<div id="carouselExampleControls" class="carousel slide"
							data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block w-100"
										src="${webRoot}/images/icons/111.png" alt="First slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="${webRoot}/images/icons/concat.png" alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="${webRoot}/images/icons/technology.png" alt="Third slide">
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleControls"
								role="button" data-slide="prev"> <span
								class="carousel-control-prev-icon" aria-hidden="true"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="carousel-control-next" href="#carouselExampleControls"
								role="button" data-slide="next"> <span
								class="carousel-control-next-icon" aria-hidden="true"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>