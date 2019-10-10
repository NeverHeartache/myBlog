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
//	editor.model.document.on( 'change:data', () => {
//	    console.log( 'The data has changed!' );
//	} );
}
function getContent(){
	return editor.getData();
}