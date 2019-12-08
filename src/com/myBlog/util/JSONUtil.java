package com.myBlog.util;

import com.alibaba.fastjson.JSONObject;

public class JSONUtil {
	public String toJSONString(Object obj){
		JSONObject jo = new JSONObject();
		String res = jo.toJSONString(obj);
		return res;
	}
}
