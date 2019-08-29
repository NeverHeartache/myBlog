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
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		SysUser su = (SysUser) SessionUtil.getValue(request, Constant.Sys_User);
		System.out.println("interceptor: "+SessionUtil.getValue(request, Constant.Sys_User));
		if(StrUtil.isNull(su)){//如果是null，未登录
			String path = request.getContextPath();
			String homeUrl = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
			System.out.println(homeUrl);
			response.sendRedirect(homeUrl);
			return false;
		} else {
			return true;
		}
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}
}
