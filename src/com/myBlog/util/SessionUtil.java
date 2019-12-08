package com.myBlog.util;

import javax.servlet.http.HttpServletRequest;

public class SessionUtil {
	
	/**
	 * 在session中获取键值对
	 * @param request
	 * @param key
	 * @return
	 */
	public static Object getValue(HttpServletRequest request, String key){
		return request.getSession().getAttribute(key);
	}
	/**
	 * 在session中设置键值对
	 * @param request
	 * @param key
	 * @param obj
	 */
	public static void setValue(HttpServletRequest request, String key, Object obj){
		 request.getSession().setAttribute(key, obj);
	}
	/**
	 * 是否存在某键值对
	 * @param request
	 * @param key
	 * @return
	 */
	public static boolean exist(HttpServletRequest request, String key){
		return request.getSession().getAttribute(key) == null ? true : false;
	}
}
