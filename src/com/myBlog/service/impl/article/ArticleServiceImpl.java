package com.myBlog.service.impl.article;

import org.springframework.beans.factory.annotation.Autowired;

import com.myBlog.dao.article.ArticleDao;
import com.myBlog.service.article.ArticleService;

public class ArticleServiceImpl implements ArticleService {
	
	@Autowired ArticleDao articleDao;
	
	
}
