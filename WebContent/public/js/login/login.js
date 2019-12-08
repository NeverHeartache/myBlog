$(function(){
	loginPage.init();
});
var loginPage = {
	pageEvent: function(){
		$("#loginBtn").on("click",function(event){
			event.preventDefault();
			var loginName = $("#exampleInputUserName").val();
			var passWord = $("#exampleInputPassword1").val();
			var selectFlag = false;
			selectFlag = $(".ui.checkbox.contract").checkbox("is checked");
			console.info(selectFlag);
			$.ajax({
				url: appInfo+"/api/login",
				type: "post",
				async: false,
				dataType: "json",
				data: {
					loginName: loginName,
					passWord: passWord
				},
				success: function(res){
					console.info(res);
					if(res.status == "1"){
						//设置cookie
						var sExpires = 60*60*24*30;//一个月
						docCookies.setItem("loginName", loginName, sExpires);
						docCookies.setItem("passWord", passWord, sExpires);
						if(selectFlag){
							docCookies.setItem("selectFlag", true, sExpires);							
						}else {
							docCookies.setItem("selectFlag", false, -1);
							docCookies.setItem("loginName", loginName, -1);
							docCookies.setItem("passWord", passWord, -1);
						}
						
						window.location.href = appInfo+ "/api/main";
					}else {
						console.info(res.msg);
					}
				},
				error: function(){
					console.info("请求发生错误！");
				}
			});
			return false;//取消form的默认提交行为
		});
		$("#signIn").on("click",function(event){
			event.preventDefault();
			console.info(appInfo+ "/api/main");
			window.location.href = appInfo+ "/api/signInPage";
			return false;
		});
	},
	pageUi: function(){
		$(".ui.checkbox.contract").checkbox();
		//加载上次cookie的用户信息
		let userName = docCookies.getItem("loginName");
		let passWord = docCookies.getItem("passWord");
		let selectFlag = docCookies.getItem("selectFlag");
		if(userName && userName != ""){
			$("#exampleInputUserName").val(userName);
		}
		if(passWord && passWord != ""){
			$("#exampleInputPassword1").val(passWord);
		}
		if(selectFlag && selectFlag == "true"){
			$(".ui.checkbox.contract").checkbox("set checked");
		} else {
			$(".ui.checkbox.contract").checkbox("set unchecked");
		}
	},
	init: function(){
		this.pageUi();
		this.pageEvent();
	}
};
var docCookies = {
		getItem: function (sKey) {
			if (!sKey) { return null; }
			return decodeURIComponent(document.cookie.replace(new RegExp("(?:(?:^|.*;)\\s*" + encodeURIComponent(sKey).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=\\s*([^;]*).*$)|^.*$"), "$1")) || null;
		},
		setItem: function (sKey, sValue, vEnd, sPath, sDomain, bSecure) {
			if (!sKey || /^(?:expires|max\-age|path|domain|secure)$/i.test(sKey)) { return false; }
			var sExpires = "";
			if (vEnd) {
				switch (vEnd.constructor) {
				case Number:
					sExpires = vEnd === Infinity ? "; expires=Fri, 31 Dec 9999 23:59:59 GMT" : "; max-age=" + vEnd;
					/*
	          Note: Despite officially defined in RFC 6265, the use of `max-age` is not compatible with any
	          version of Internet Explorer, Edge and some mobile browsers. Therefore passing a number to
	          the end parameter might not work as expected. A possible solution might be to convert the the
	          relative time to an absolute time. For instance, replacing the previous line with:
					 */
					/*
	          sExpires = vEnd === Infinity ? "; expires=Fri, 31 Dec 9999 23:59:59 GMT" : "; expires=" + (new Date(vEnd * 1e3 + Date.now())).toUTCString();
					 */
					break;
				case String:
					sExpires = "; expires=" + vEnd;
					break;
				case Date:
					sExpires = "; expires=" + vEnd.toUTCString();
					break;
				}
			}
			document.cookie = encodeURIComponent(sKey) + "=" + encodeURIComponent(sValue) + sExpires + (sDomain ? "; domain=" + sDomain : "") + (sPath ? "; path=" + sPath : "") + (bSecure ? "; secure" : "");
			return true;
		},
		removeItem: function (sKey, sPath, sDomain) {
			if (!this.hasItem(sKey)) { return false; }
			document.cookie = encodeURIComponent(sKey) + "=; expires=Thu, 01 Jan 1970 00:00:00 GMT" + (sDomain ? "; domain=" + sDomain : "") + (sPath ? "; path=" + sPath : "");
			return true;
		},
		hasItem: function (sKey) {
			if (!sKey || /^(?:expires|max\-age|path|domain|secure)$/i.test(sKey)) { return false; }
			return (new RegExp("(?:^|;\\s*)" + encodeURIComponent(sKey).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=")).test(document.cookie);
		},
		keys: function () {
			var aKeys = document.cookie.replace(/((?:^|\s*;)[^\=]+)(?=;|$)|^\s*|\s*(?:\=[^;]*)?(?:\1|$)/g, "").split(/\s*(?:\=[^;]*)?;\s*/);
			for (var nLen = aKeys.length, nIdx = 0; nIdx < nLen; nIdx++) { aKeys[nIdx] = decodeURIComponent(aKeys[nIdx]); }
			return aKeys;
		}
};