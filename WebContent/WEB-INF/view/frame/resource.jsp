<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="${webRoot}/img/favicon.ico" type="image/x-icon" />
<link href="${webRoot}/common/semantic/semantic.min.css" rel="stylesheet">
<link href="${webRoot}/css/common.css" rel="stylesheet">

<script src="${webRoot}/common/jquery-3.3.1.min.js"></script>
<script src="${webRoot}/common/semantic/semantic.min.js" type="text/javascript"></script>
<script>
	$(function(){
		$(".browse.item.personalCenter").popup({
			on: "click",
			popup: ".ui.fluid.popup.settings",
			position: "bottom left",
		});
	})
</script>