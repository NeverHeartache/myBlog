package com.myBlog.controller.test;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;
import org.apache.commons.logging.LogFactory;
import org.apache.commons.logging.Log;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value="/api/demo")
public class DemoController {

	private Log log = LogFactory.getLog(DemoController.class);
	
	@RequestMapping(value="/detail")
	public String detail(HttpServletRequest request, HttpServletResponse response){
		
		return "demo/demoIndex";
	}
}
