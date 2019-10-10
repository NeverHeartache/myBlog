var isLoginning = false;
$(function(){
	console.log(appInfo);
	$("#signUp").on("click",function(){
		signUp();
	});
	$("#loginPage").on("click",function(){
		loginPage();
	});
//	pageData.getBlogs();
});
//var pageData = {
//	blogs: [],
//	getBlogs: function(){
//		$.ajax({
//			url: appInfo+"/api/main/getBlogs",
//			dataType:"json",
//	        contentType:"application/json",
//	        type: "post",
//	        asnyc: true,
//	        cache: false,
//	        success: function(res){
//	        	pageData.blogs = [];
//	        	console.info(res);
//	        },
//	        error: function(){
//	        	
//	        }
//		});
//	}
//};

function loginPage(){
	$.ajax({
		url: appInfo+"/api/userLogin",
		type: "GET",
		cache: false,
		async: false,
		sucess: function(result){
			console.info(result);
		}
	});
}

function signUp(){
	if(isLoginning) return;
	isLoginning = true;
//	登录界面UI显示
	var loginName = $("#loginName").val();
	var passWord = $("#passWord").val();
	$.ajax({
		url: appInfo+"/api/login",
		type: "POST",
		cache: false,
		async: false,
		data: {
			loginName: loginName,
			passWord : passWord
		},
		sucess: function(result){
			console.info(result);
		}
	});

}