package com.myBlog.controller.daily;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="api")
public class DailyController {
	
	private static final Log log = LogFactory.getLog(DailyController.class);
	
	@RequestMapping(value="daily",method=RequestMethod.GET)
	public String logout(HttpServletRequest request, 
			HttpServletResponse response){
		return "daily/daily";
	}
}
