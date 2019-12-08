package org.interview.case01;

public class PersonFactory {
	public Person person(int s){
		switch(s){
			case 1:
				return new Man();
			case 2: 
				return new Woman();
			default:
				return null;
		}
	}
}
