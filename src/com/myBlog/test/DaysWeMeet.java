package com.myBlog.test;

import java.util.Calendar;
import java.util.Scanner;

public class DaysWeMeet{
	private static int year;
	private static int month;
	private static int dayOfMonth;
	public static void main(String[] args){
		Calendar then = getStartDate();
		Calendar now = getNowDate();
		long millisDiff = now.getTimeInMillis() - then.getTimeInMillis();
		long days = millisDiff/(3600*1000*24);
		System.out.println("我们已经相识了："+days +"天了呀！");
	}
	
	@SuppressWarnings("resource")
	private static Calendar getStartDate(){
		Scanner sc = new Scanner(System.in);
		System.out.println("请输入起始时间的年份：");
		year = sc.nextInt();
		
		System.out.println("请输入起始时间的月份：");
		month = sc.nextInt()-1;
		
		System.out.println("请输入起始时间的天：");
		dayOfMonth = sc.nextInt();
		
		Calendar cal = Calendar.getInstance();
		
		cal.set(year, month, dayOfMonth);
		return cal;
	}
	
	private static Calendar getNowDate(){
		return Calendar.getInstance();
	}
}
