package com.myBlog.sys.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.myBlog.entity.login.SysUser;
import com.myBlog.util.Constant;
import com.myBlog.util.SessionUtil;
import com.myBlog.util.StrUtil;

public class loginInterceptor implements HandlerInterceptor {
	
	@SuppressWarnings("static-access")
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		SysUser su = (SysUser)new SessionUtil().getValue(request, Constant.Sys_User);
		System.out.println("interceptor: "+new SessionUtil().getValue(request, Constant.Sys_User));
		if(StrUtil.isNull(su)){//如果是null，未登录
			String path = request.getContextPath();
			String homeUrl = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
			System.out.println(homeUrl);
			request.setAttribute(Constant.User_Name, null);
			response.sendRedirect(homeUrl);
			return false;
		} else {
			request.setAttribute(Constant.User_Name, su.getUserName());
			return true;
		}
	}

	@SuppressWarnings("static-access")
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		SysUser su = (SysUser)new SessionUtil().getValue(request, Constant.Sys_User);
		if(StrUtil.isNull(su)){
//			modelAndView.addObject("User_Name", null);
			request.setAttribute(Constant.User_Name, null);
		} else {
//			modelAndView.addObject("User_Name", su.getUserName());
			request.setAttribute(Constant.User_Name, su.getUserName());
		}
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}
}
