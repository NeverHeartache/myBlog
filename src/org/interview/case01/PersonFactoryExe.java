package org.interview.case01;

public class PersonFactoryExe {
	public static void main(String[] args) {
		PersonFactory pf = new PersonFactory();
		pf.person(1).sex();
		pf.person(2).sex();
	}
}
