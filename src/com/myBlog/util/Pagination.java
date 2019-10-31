package com.myBlog.util;

import java.util.List;

public class Pagination {
	/**
	 * 当前页码
	 */
	private int currentPage = 0;
	/**
	 * 最小页码
	 */
	private int minPage;
	/**
	 * 最大页码
	 */
	private int maxPage;
	/**
	 * 默认每页的数据量
	 */
	private int pageCount = 10; 
	/**
	 * 总数据量
	 */
	private int totalCount;
	/**
	 * 本页所有数据
	 */
	private List<Object> data;
	
	public Pagination(int currentPage, int pageCount){
		this.currentPage = currentPage;
		this.pageCount = pageCount;
	}

	public List<Object> getData() {
		return data;
	}

	public void setData(List<Object> data) {
		this.data = data;
	}
	
}
