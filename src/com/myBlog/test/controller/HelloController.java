package com.myBlog.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController 
{
	
	private static final Log logger = LogFactory.getLog(HelloController.class);
	
	@RequestMapping(value="/hello")
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("come to HelloController...");
		request.setAttribute("status", "sleep well...");
		return "register/index";
	}
	
}
