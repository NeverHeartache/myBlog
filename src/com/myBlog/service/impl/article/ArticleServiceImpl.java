package com.myBlog.service.impl.article;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.myBlog.dao.article.ArticleDao;
import com.myBlog.entity.article.Article;
import com.myBlog.entity.article.ArticleExample;
import com.myBlog.service.article.ArticleService;
import com.myBlog.util.StrUtil;
@Service
public class ArticleServiceImpl implements ArticleService {
	
	@Resource
	private ArticleDao articleDao;

	@Override
	public int addArticle(Article record) {
		record.setArticleId(StrUtil.randomUUID());
		//时间格式化
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = sdf.format(new Date());
		record.setArticleTime(now);//发布时间
		record.setArticleClick(0);//查看人数
		record.setArticleType("1");//文章的模式
		record.setTypeId("1");
		record.setArticleUp("0");
		record.setArticleSupport("0");
		
		int res = articleDao.insert(record);
		
		return res;
	}

	@Override
	public int deleteByPrimaryKey(String articleId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Article record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Article record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Article> selectByExampleWithBLOBs(ArticleExample example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Article> selectByExample(ArticleExample example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Article selectByPrimaryKey(String articleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Article record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(Article record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Article record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Article> queryBlogs() {
		List<Article> list = articleDao.queryAllBlogs();
		return null;
	}
	
	
}
