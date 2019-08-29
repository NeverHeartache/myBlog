package com.myBlog.util;

public class ResultBean {
	/**
	 * 结果信息
	 */
	private String resMsg = "";
	/**
	 * 结果编码
	 * 1： 请求成功；
	 * 0：请求失败；
	 */
	private char resCode;
	/**
	 * 结果数据
	 */
	private Object resultData;
	
	
	public String getResMsg() {
		return resMsg;
	}
	public void setResMsg(String resMsg) {
		this.resMsg = resMsg;
	}
	public char getResCode() {
		return resCode;
	}
	public void setResCode(char resCode) {
		this.resCode = resCode;
	}
	public Object getResultData() {
		return resultData;
	}
	public void setResultData(Object resultData) {
		this.resultData = resultData;
	}
	
	
}
