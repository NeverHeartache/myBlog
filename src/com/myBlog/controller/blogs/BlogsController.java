package com.myBlog.controller.blogs;

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

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.myBlog.entity.article.Article;
import com.myBlog.entity.login.SysUser;
import com.myBlog.service.article.ArticleService;
import com.myBlog.util.Constant;
import com.myBlog.util.RequestUtil;
import com.myBlog.util.ResultBean;
import com.myBlog.util.SessionUtil;
import com.myBlog.util.StrUtil;

@Controller
@RequestMapping(value="api/main")
public class BlogsController {
	
	private static final Log logger = LogFactory.getLog(BlogsController.class);
	@Autowired(required=true)
	ArticleService articleService;
	/**
	 * 跳转博客发布页面
	 * @param request 
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/blogs", method=RequestMethod.GET)
	public String blogs( HttpServletRequest request,HttpServletResponse response){
		return "home/main";
	}
	/**
	 * 发布博客
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="/releaseBlogs", method=RequestMethod.POST)
	@ResponseBody
	public String releaseBlogs(@RequestBody String article,HttpServletRequest request,HttpServletResponse response){
		JSONObject rb = new JSONObject();
		try {
			Article article2=JSONObject.toJavaObject(JSONObject.parseObject(article), Article.class);
			System.out.println(JSONObject.toJSONString(article2));
			
			article2.setArticleIp(RequestUtil.getIpAddr(request));
			SysUser user = (SysUser)SessionUtil.getValue(request, Constant.Sys_User);
			article2.setUserId(user.getUserId());
			int res = articleService.addArticle(article2);
			
			rb.put("errCode", "1");
			
			rb.put("msg","发布博客成功！");
			rb.put("data",res);
		}catch(Exception e){
			rb.put("errCode",'0');
			rb.put("msg","发布博客失败！");
			rb.put("data",null);
			e.printStackTrace();
		}
		return rb.toJSONString();
	}
	@RequestMapping(value="getBlogs", method=RequestMethod.POST)
	@ResponseBody
	public List<Article> getAllBlogs(HttpServletRequest request,HttpServletResponse response){
		List<Article> resList = articleService.queryBlogs();
		if(resList != null){
			System.out.println(resList.size());
		}
		return resList;
	}
}
