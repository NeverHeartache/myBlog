/**
 * 
 */
var isLogin = false;
$(function(){
	$("#login").on('click',function(){
		userLogin();
		
	});
})

/**
 * 用户登录方法
 */
function userLogin(){
	if(isLogin){
		return;
	}
	isLogin = true;
	var username = $("#username").val();
	var password = $("#password").val();
	$.ajax({
		url: "/login/userLogin",
		type: 'post',
		async: false,
		cache: false,
		data: {
			username: username,
			password: password
		},
		success: function(result){
			
		},
		error: function () {
			
		}
		
	});
}