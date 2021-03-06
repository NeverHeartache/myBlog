package com.myBlog.dao.article;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myBlog.entity.article.Article;
import com.myBlog.entity.article.ArticleExample;
@Repository
public interface ArticleDao {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table article
	 * @mbg.generated  Mon Oct 14 10:02:31 CST 2019
	 */
	int deleteByPrimaryKey(String articleId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table article
	 * @mbg.generated  Mon Oct 14 10:02:31 CST 2019
	 */
	int insert(Article record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table article
	 * @mbg.generated  Mon Oct 14 10:02:31 CST 2019
	 */
	int insertSelective(Article record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table article
	 * @mbg.generated  Mon Oct 14 10:02:31 CST 2019
	 */
	List<Article> selectByExampleWithBLOBs(ArticleExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table article
	 * @mbg.generated  Mon Oct 14 10:02:31 CST 2019
	 */
	List<Article> selectByExample(ArticleExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table article
	 * @mbg.generated  Mon Oct 14 10:02:31 CST 2019
	 */
	Article selectByPrimaryKey(String articleId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table article
	 * @mbg.generated  Mon Oct 14 10:02:31 CST 2019
	 */
	int updateByPrimaryKeySelective(Article record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table article
	 * @mbg.generated  Mon Oct 14 10:02:31 CST 2019
	 */
	int updateByPrimaryKeyWithBLOBs(Article record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table article
	 * @mbg.generated  Mon Oct 14 10:02:31 CST 2019
	 */
	int updateByPrimaryKey(Article record);
	/**
	 * 
	 * @return
	 */
	List<Article> queryBlogs(Article record);
}