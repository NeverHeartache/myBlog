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
<link rel="stylesheet" type="text/css" href="${webRoot}/css/index/index.css">
<script type="text/javascript">
	var appInfo = "${webRoot}";
</script>
<script type="text/javascript" src="${webRoot}/js/frame/index.js"></script>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="content-container">
		<div class="ui grid">
			<div class="row">
				<div class="ten wide column">
					<div class="ui grid">
						<div class="row">
							<div class="ui divided items">
								<c:forEach var="blog" items="${blogs }">
									<div class="item">
										<div class="image" style="width: 24px; height: 24px;">
									      <i class="comment large info circle icon"></i>
									    </div>
										<div class="content">
											<a class="header"
												href="${webRoot}/api/main/viewBlog?articleId=${blog.articleId }">
												${blog.articleName } </a>
											<div class="description">
												<p>${blog.articleSummary }</p>
											</div>
											<div class="extra">
												Additional Details
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="ui pagination menu">
								<div class="active item">1</div>
								<div class="item">2</div>
								<div class="item">3</div>
								<div class="item">4</div>
								<div class="item">...</div>
								<div class="item">100</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="four wide column">
					<div class="ui shape">
					  <div class="sides">
					    <div class="active side">
								<div class="ui card">
									<a class="image" href="#"> 
										<img src="${webRoot }/images/dog.png"></img>
									</a>
									<div class="content">
										<a class="header" href="#">Steve Jobes</a>
										<div class="meta">
											<a>Last Seen 2 days ago</a>
										</div>
									</div>
								</div>
							</div>
							<div class="side">
								<div class="ui card">
									<a class="image" href="#"> 
										<img src="${webRoot }/images/cloud.jpg"></img>
									</a>
									<div class="content">
										<a class="header" href="#">Steve Jobes</a>
										<div class="meta">
											<a>Last Seen 2 days ago</a>
										</div>
									</div>
								</div>
							</div>
					  	<div class="side">
					  		<div class="ui card">
									<a class="image" href="#"> 
										<img src="${webRoot }/images/plant.jpg"></img>
									</a>
									<div class="content">
										<a class="header" href="#">Steve Jobes</a>
										<div class="meta">
											<a>Last Seen 2 days ago</a>
										</div>
									</div>
								</div>
					  	</div>
					  </div>
					</div>
					<div class="ui ignored divider"></div>
					<div class="ui ignored icon direction buttons">
						<div class="ui button leftArrow" data-animation="flip" data-direction="left"
							title="Flip Left">
							<i class="left long arrow icon"></i>
						</div>
						<div class="ui button upArrow" data-animation="flip" data-direction="up"
							title="Flip Up">
							<i class="up long arrow icon"></i>
						</div>
						<div class="ui icon button downArrow" data-animation="flip"
							data-direction="down" title="Flip Down">
							<i class="down long arrow icon"></i>
						</div>
						<div class="ui icon button rightArrow" data-animation="flip"
							data-direction="right" title="Flip Right">
							<i class="right long arrow icon"></i>
						</div>
					</div>

					<div class="ui ignored icon direction buttons">
						<div class="ui button flipover" data-animation="flip" data-direction="over"
							title="Flip Over">
							<i class="retweet icon"></i>
						</div>
						<div class="ui button flipback" data-animation="flip" data-direction="back"
							title="Flip Back">
							<i class="flipped retweet icon"></i>
						</div>
					</div>
				</div>
				
			</div>
		
				<div class="two wide column"></div>
		</div>
	</div>
</body>
</html>