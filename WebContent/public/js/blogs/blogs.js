$(function(){
	initEvent();
});
function initEvent(){
	$("#releaseBlog").on("click",function(){
		$("#releaseBlog").off("click");
		$("form[name=blog-content]").submit();
		$("#releaseBlog").on("click");
	});
//	editor.model.document.on( 'change:data', () => {
//	    console.log( 'The data has changed!' );
//	} );
}
var gBlog = {
	article_id : "",
	article_name : "",
	article_time : "",
	article_ip : "",
	article_click : "",
	sort_article_id : "",
	user_id : "",
	type_id : "",
	article_type : "",
	article_content : "",
	article_up : "",
	article_support : "",
	getContent: function(){
		article_content = editor.getData();
	},
	
};