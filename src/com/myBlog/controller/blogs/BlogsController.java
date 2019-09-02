package com.myBlog.controller.blogs;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myBlog.service.login.SysUserService;

@Controller
@RequestMapping(value="main")
public class BlogsController {
	
	private static final Log logger = LogFactory.getLog(BlogsController.class);
	
	
	@RequestMapping(value="/blogs", method=RequestMethod.GET)
	public String blogs( HttpServletRequest request,HttpServletResponse response){
		logger.info("我是贺磊测试中，，，");
		return "home/main";
	}
}
