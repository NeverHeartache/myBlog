<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="webRoot" value="${pageContext.request.contextPath}"></c:set>
<% 
	String webRoot = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + webRoot +"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人博客</title>
<%@include file="resource.jsp" %>
<link rel="stylesheet" type="text/css" href="${webRoot}/css/index/index.css">
<script src="${webRoot}/js/index/index.js"></script>
<script type="text/javascript">
var appInfo = "${webRoot}";
$(function(){
	
});
</script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class=" container content-container">
		<div class="blogs-container">			
			<div class="row">
				<div class="col">
					<div class="card" style="width: 45rem;">
						<div class="card-body">
							<a>
								<h5 class="card-title">Card title</h5>
							</a>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
					<div class="card" style="width: 45rem;">
						<div class="card-body">
							<a>
								<h5 class="card-title">Card title</h5>
							</a>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
					<div class="card" style="width: 45rem;">
						<div class="card-body">
							<a>
								<h5 class="card-title">Card title</h5>
							</a>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
					<div class="card" style="width: 45rem;">
						<div class="card-body">
							<a>
								<h5 class="card-title">Card title</h5>
							</a>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
					<div class="card" style="width: 45rem;">
						<div class="card-body">
							<a>
								<h5 class="card-title">Card title</h5>
							</a>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
					<div class="card" style="width: 45rem;">
						<div class="card-body">
							<a>
								<h5 class="card-title">Card title</h5>
							</a>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
					<div class="card" style="width: 45rem;">
						<div class="card-body">
							<a>
								<h5 class="card-title">Card title</h5>
							</a>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="right-frame">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100" src="${webRoot}/images/icons/111.png" alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="${webRoot}/images/icons/concat.png" alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="${webRoot}/images/icons/technology.png" alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> 
				<a class="carousel-control-next" href="#carouselExampleControls"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
</body>
</html>