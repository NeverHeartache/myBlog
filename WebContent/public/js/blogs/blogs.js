//action="${webRoot }/api/main/releaseBlogs
var article = {
	articleId : "",
	articleName : "",
	articleTime : "",
	articleIp : "",
	articleClick : "",
	sortArticleId : "",
	userId : "",
	typeId : "",
	articleType : "",
	articleContent : "",
	articleUp : "",
	articleSupport : ""
};

$(function(){
	initUi();
	initEvent();
});
function initUi(){
	$(".ui.dropdown").dropdown();
	$("#aLabel").css("padding-top", "calc(0.55rem + 1px)");//padding-top: calc(0.55rem + 1px);	
}
function initEvent(){
	$("#releaseBlog").on("click",function(){
		article.articleName = $("#articleName").val();
		article.articleType = $("#articleType").val();
		article.articleContent = getContent();
		console.log(article);
		debugger;
		console.log($(article).serialize());
		$.ajax({
			url: appInfo+"/api/main/releaseBlogs",
			type: "POST",
			cache: false,
			asnyc: false,
			dataType: 'json',
			contentType: "application/json;charset=utf-8",
			data:  JSON.stringify(article),
			beforeSend: function(){
				
			},
			success: function(res){
				console.log(res);
				if(res.status == "1"){
					
				} else {
					
				}
			},
			error: function(){
				
			}
		});
	});
//	editor.model.document.on( 'change:data', () => {
//	    console.log( 'The data has changed!' );
//	} );
}
function getContent(){
	return editor.getData();
}