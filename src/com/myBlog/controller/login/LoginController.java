package com.myBlog.controller.login;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.myBlog.entity.article.Article;
import com.myBlog.entity.login.SysUser;
import com.myBlog.service.article.ArticleService;
import com.myBlog.service.login.SysUserService;
import com.myBlog.util.Constant;
import com.myBlog.util.SessionUtil;
import com.myBlog.util.StrUtil;

@Controller
@RequestMapping(value="api")
public class LoginController {
	//基本私有属性logger
	private static final Log logger = LogFactory.getLog(LoginController.class);
	@Autowired
	SysUserService sysUserService = null;
	@Autowired
	ArticleService articleService;
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main(HttpServletRequest request, HttpServletResponse response){
		List<Article> resList = articleService.queryBlogs(new Article());
		SysUser su = (SysUser)SessionUtil.getValue(request, Constant.Sys_User);
		if(su != null){
			request.setAttribute(Constant.User_Name, su.getUserName());
		}
		request.setAttribute("blogs", resList);
		return "frame/index";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam("loginName") String loginName, 
						@RequestParam("passWord") String passWord,
						HttpServletRequest request, 
						HttpServletResponse response){
		JSONObject res = new JSONObject();
		if(StrUtil.isEmpty(loginName) || StrUtil.isEmpty(passWord)){
			res.put("status", "0");
			res.put("msg", "用户名或者密码不能为空！");
			res.put("data", "");
			return res.toString();
		}
		//通过用户名密码来查询登录人信息
		SysUser user = sysUserService.queryUserByLoginName(loginName);
		logger.info(user);
		
		if(StrUtil.isNull(user)){
			//
			res.put("status", "0");
			res.put("msg", "登录失败，请重新登录！");
			res.put("data", "");
			return res.toString();
		}
		String userPwd = user.getUserPwd();
		if(userPwd.equals(passWord)){
			SessionUtil.setValue(request, Constant.Sys_User, user);
			res.put("status", "1");
			res.put("msg", "用户登录成功");
			res.put("data", "");
		} else {
			res.put("msg", "用户名或密码错误，请重新登录！");
			res.put("status", "0");
			res.put("data", "");
		}
		System.out.println(res.toString());
		return res.toString();
	}
	
	@RequestMapping(value="/userLoginPage", method=RequestMethod.GET)
	public String userLogin(HttpServletRequest request, HttpServletResponse response){
		System.out.println(request.getContextPath());
		System.out.println(request.getLocalPort());
		System.out.println(request.getRequestURL());
		System.out.println(request.getServletPath());
		System.out.println(request.getRequestURI());
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
		System.out.println(basePath);
		System.out.println(request.getMethod());
		return "login/login";
	}
	/**
	 * 用户注销
	 * 直接在数据库中删除数据记录
	 * @param userId
	 * @return
	 */
	@RequestMapping(value="logOff",method=RequestMethod.GET)
	public String logOff(String userId){
		if(userId != null){
			int res = sysUserService.deleteByPrimaryKey(userId);
			if(res > 0){
				return "register/register";
			}
		}
		return "frame/index";
	}
	/**
	 * 注册页面
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="signInPage",method=RequestMethod.GET)
	public String signInPage(HttpServletRequest request, HttpServletResponse response){
		logger.info("注册页面");
		return "register/register";
	}
	/**
	 * 用户注册
	 * @param loginName
	 * @param passWord
	 * @param userPhone
	 * @param userSex
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/signIn", method=RequestMethod.POST)
	@ResponseBody
	public String signIn(@RequestParam("loginName") String loginName, 
						@RequestParam("passWord") String passWord,
						@RequestParam("userPhone") String userPhone,
						@RequestParam("userSex") String userSex,
						HttpServletRequest request, 
						HttpServletResponse response){
		JSONObject resJson = new JSONObject();
		if(StrUtil.isEmpty(loginName) || StrUtil.isEmpty(passWord) || 
					StrUtil.isEmpty(userPhone) || StrUtil.isEmpty(userSex)){
			resJson.put("msg", "请填写所有内容！");
			resJson.put("errorCode", "0");
			resJson.put("data", "");
			return resJson.toString();
		}
		boolean isExistUser = false;
		isExistUser = sysUserService.queryWhetherUserExist(loginName);
		if(isExistUser){
//			已经存在该用户名，不允许重复用户名
			resJson.put("errorCode", "0");
			resJson.put("data", "");
			resJson.put("msg", "该用户名已经存在，请重新注册！");
			return resJson.toString();
		}
		SysUser sysUser = new SysUser();
		sysUser.setUserName(loginName);
		sysUser.setUserPwd(passWord);
		sysUser.setUserPhone(userPhone);
		sysUser.setUserSex(userSex);
		sysUser.setUserId(StrUtil.randomUUID());//user_id
		sysUser.setGroupId("1");//用户组
		sysUser.setUserRegisterIp(getIpAddr(request));
		sysUser.setUserLastLoginIp(getIpAddr(request));
		//register date 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String rightNowStr = sdf.format(new Date());
		sysUser.setUserRegisterTime(rightNowStr);
		sysUser.setUserLastUpdateTime(rightNowStr);
		sysUser.setUserPower("1");//用户权力
		//通过用户名密码来查询登录人信息
		int res = sysUserService.insertUser(sysUser);
		logger.info(res);
		if(res > 0){
			//获取该登录用户信息 ，并存入session
			SessionUtil.setValue(request, Constant.Sys_User, sysUser);
			resJson.put("errorCode", "1");
			resJson.put("data", "");
			resJson.put("msg", "恭喜，注册成功！");
		} else {
			resJson.put("errorCode", "");
			resJson.put("data", "");
			resJson.put("msg", "注册失败，请重新注册！");
		}
		return resJson.toString();
	}
	/**
	 * 获取用户登录IP
	 * @param request
	 * @return
	 */
	private static String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("X-Forwarded-For");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_CLIENT_IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}
	/**
	 * 退出
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value="logout",method=RequestMethod.GET)
	public void logout(HttpServletRequest request, 
			HttpServletResponse response) throws IOException{
		request.getSession().invalidate();
		String path = request.getContextPath();
		String homeUrl = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
		response.sendRedirect(homeUrl);
	}

	
	
}
