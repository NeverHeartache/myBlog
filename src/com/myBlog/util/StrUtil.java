package com.myBlog.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class StrUtil {

	public static String randomUUID(){
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	
	public static String nowTimeStr(){
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date).toString();
	}
	
	public static boolean isNull(Object obj){
		return obj == null;
	}
	
	public static boolean isEmpty(String str){
		return (str == null || "".equals(str) || str.trim().length() == 0);
	}
	
}
