<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="webRoot" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EasyUi-Demos</title>
<%@include file="../frame/resource.jsp" %>
<link rel="stylesheet" type="text/css" href="${webRoot }/common/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${webRoot }/common/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${webRoot }/common/easyui/demo.css">
<script type="text/javascript" src="${webRoot }/common/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${webRoot }/common/easyui/jquery.easyui.min.js"></script>
<style type="text/css">
	body{
		background: #fff; 
	}
</style>
<script>
	$(function(){
		
	});	
</script>
</head>
<body>
	<%@include file="../frame/header.jsp" %>
	<div id="demoList" class="easyui-tabs" style="width: 100%; height: 512px; margin-top: 45px;">
		<div title="demoList" class="" data-option="closable:true">
			<div id="aa" class="easyui-accordion" style="width:300px;height:100%;">
			    <div title="Title1" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">
					<h3 style="color:#0099FF;">Accordion for jQuery</h3>
					<p>Accordion is a part of easyui framework for jQuery.
					It lets you define your accordion component on web page more easily.</p>
			    </div>
			    <div title="Title2" data-options="iconCls:'icon-reload',selected:true" style="padding:10px;">
					content2
			    </div>
			    <div title="Title3">
					content3
			    </div>
			</div>
		</div>
		<div title="windowTab" class="" data-option="closable:true">
			
		</div>
	</div>
	<div id="w" class="easyui-window" title="我的窗口" data-options="iconCls:'icon-save'" 
			style="width:980px;height:450px;">
	</div> 
</body>
</html>