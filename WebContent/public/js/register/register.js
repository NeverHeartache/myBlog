var isLoginning = false;
$(function(){
	registerPage.init();
});
var registerPage = {
	pageEvent: function(){
		$("#signUp").on("click",function(event){
			signUp();
		});
		$("#backToLogin").on("click",function(event){
			event.preventDefault();
			window.location.href = appInfo+ "/api/userLoginPage";
			return false;
		});
	},
	init: function(){
		this.pageEvent();
	}
};

function signUp(){
	if(isLoginning) return;
	isLoginning = true;
//	登录界面UI显示
	var loginName = $("#loginName").val();
	var passWord = $("#passWord").val();
	var userPhone = $("#userPhone").val();
	var userSex = $("#userSex").val();
	$.ajax({
		url: appInfo+"/api/signIn",
		type: "POST",
		cache: false,
		async: false,
		data: {
			loginName: loginName,
			passWord : passWord,
			userPhone: userPhone,
			userSex: userSex
		},
		sucess: function(res){
			console.info(res);
			if(res.status == "1"){
				//设置cookie
				var sExpires = 60*60*24*30;//一个月
				docCookies.setItem("loginName", loginName, sExpires);
				docCookies.setItem("passWord", passWord, sExpires);
				
				window.location.href = appInfo+ "/api/main";
			}else {
				console.info(res.msg);
				//
			}
		}
	});

}