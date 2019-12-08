<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="${webRoot}/img/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="${webRoot}/common/semantic/semantic.min.css">
<link rel="stylesheet" href="${webRoot}/css/common.css">

<script src="${webRoot}/common/jquery-3.3.1.min.js"></script>
<script src="${webRoot}/common/semantic/semantic.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".browse.item.personalCenter").popup({
		on: "click",
		position: "bottom left",
		popup: '.ui.fluid.popup.settings'
	});
	
})
</script>
