package com.myBlog.test.myMind;

import com.myBlog.test.beans.Person;

public class ValueParam {
	 
	private Person person = new Person();
	public ValueParam(Person newOne){
		newOne.setAge(26);
		this.person = newOne;
	}
	public static void main(String[] args){
		Person stu = new Person();		
		stu.setAge(10);
		ValueParam vp = new ValueParam(stu);
		System.out.println(stu.getAge());
		int i = 20;
		System.out.println(changeVal(i));
	}
	public static int changeVal(int m){
		return m+3;
	}
}
