/**
 * 
 */
var isLoginning = false;
$(function(){
	console.log(appInfo);
	$("#signUp").on("click",function(){
		signUp();
	});
	$("#loginPage").on("click",function(){
		loginPage();
	});
});

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