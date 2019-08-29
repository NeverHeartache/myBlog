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
<link rel="stylesheet" type="text/css"
	href="${webRoot}/css/index/index.css">
<style type="text/css">
.bTitle {
	display: inline-block;
	width: 100%;
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

.ke-container.ke-container-simple {
	width: 56rem !important;
	margin-left: 22px;
}
</style>
</head>
<body>
	<%@include file="../frame/header.jsp"%>
	<div class="container content-container">
		<div class="row">
			<div class="col-8">
				<div class="row">
					<input class="bTitle" name="article_title" placeholder="请输入标题">			
					<form method="post" action="" style="width: 100%; height: 100%; padding:0; ">
						<textarea name="content1" cols="100" rows="20" style="width: 100%; height: 700px;">
							<div>
							    <img alt="" src="${webRoot }/common/kindeditor/plugins/emoticons/images/0.gif" />
							    <div>
							        123
							    </div>
							</div>
						</textarea>
					</form>
				</div>
			</div>
    		<div class="col-4">
    			<div class=""></div>
    		</div>
		</div>
	</div>
	<script>
		KindEditor.DEBUG = true;
		KindEditor.options.filterMode = false;
		KindEditor.options.autoHeightMode = true;
		KindEditor.options.fixToolBar = true;
		//document.domain = 'domain.com';
		KindEditor.basePath = '${webRoot }/common/kindeditor/';
		console.log(KindEditor.basePath);
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name=content1]', {
				basePath : '${webRoot }/common/kindeditor/',
				pluginsPath : '${webRoot }/common/kindeditor/plugins/',
				urlType : 'absolute',
				themeType : 'simple',
				allowImageUpload : true,
				allowImageRemote : true,
				allowFileUpload : true,
				designMode : true,
				allowFileManager : true,
				fullscreenMode : false,
				formatUploadUrl : false,
				fullscreenShortcut : false,
				newlineTag : 'p',
				pasteType : 1,
				extraFileUploadParams : {
					'testParam1' : 'a',
					'testParam2' : 'b'
				},
				//afterTab : function() {
				//editor2.focus();
				//},
				afterChange : function() {
					K('#J_count1').html(this.count());
					//console.log('1');
				},
				afterUpload : function(url, data, name) {
					var select = K('#uploadFile')[0];
					select.options.add(new Option(url, url));
					console.log(data);
					console.log(name);
				},
				afterSelectFile : function(url) {
					var select = K('#uploadFile')[0];
					select.options.add(new Option(url, url));
				},
				afterCreate : function() {
					//this.loadPlugin('autoheight');
				}
			});
			K('#create1').click(function(e) {
				editor1.create();
			});
			K('#remove1').click(function(e) {
				editor1.remove();
			});
			K('#getHtml1').click(function(e) {
				alert(editor1.html());
			});
			K('#fullHtml1').click(function(e) {
				alert(editor1.fullHtml());
			});
			K('#setHtml1').click(function(e) {
				editor1.html(K('#insertHtml').val());
			});
			K('#empty1').click(function(e) {
				editor1.html('');
			});
			K('#getText1').click(function(e) {
				alert(editor1.text());
			});
			K('#setText1').click(function(e) {
				editor1.text(K('#insertHtml').val());
			});
			K('#selectedHtml1').click(function(e) {
				alert(editor1.selectedHtml());
			});
			K('#insertHtml1').click(function(e) {
				editor1.insertHtml(K('#insertHtml').val());
			});
			K('#appendHtml1').click(function(e) {
				editor1.appendHtml(K('#insertHtml').val());
			});
			K('#sync1').click(function(e) {
				editor1.sync();
				alert(K('textarea[name=content1]').val());
			});
			K('#focus1').click(function(e) {
				editor1.focus();
			});
			K('#blur1').click(function(e) {
				editor1.blur();
			});
			K('#readonly1').click(function(e) {
				editor1.readonly();
			});
			K('#cancelReadonly1').click(function(e) {
				editor1.readonly(false);
			});
			K('#isEmpty1').click(function(e) {
				alert(editor1.isEmpty());
			});
			K('#isDirty1').click(function(e) {
				alert(editor1.isDirty());
			});
			K('#loadPlugin1').click(function(e) {
				editor1.loadPlugin('template', function() {

				});
				editor1.loadPlugin('template', function() {

				});
			});
			var editor2 = K.create(K('textarea[name=content2]')
					.get(), {
				basePath : '${webRoot }/common/kindeditor/',
				langType : 'en',
				formatUploadUrl : false,
				afterTab : function() {
					K('#uploadFile')[0].focus();
				},
				afterCreate : function() {
					//this.loadPlugin('autoheight');
				}
			});
			K('#create2').click(function(e) {
				editor2.create();

			});
			K('#remove2').click(function(e) {
				editor2.remove();
			});

			var editor3 = K.editor({
				basePath : '../',
				themesPath : '../themes/',
				pluginsPath : '../plugins/',
				langPath : '../lang/',
				allowFileManager : true
			});
			K('#image').click(
					function() {
						editor3.loadPlugin('image', function() {
							editor3.plugin.imageDialog({
								imageUrl : K('#url').val(),
								clickFn : function(url, title,
										width, height, border,
										align) {
									K('#url').val(url);
									editor3.hideDialog();
								}
							});
						});
					});
			K.create('textarea[name=content1]');
			//K(window).bind('resize', function(e) {
			//	editor1.resize(null, document.documentElement.clientHeight);
			//});
		});
	</script>
</body>
</html>