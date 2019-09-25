package org;

import reusing.Orc;

public class ThOrc {
	public static void main(String[] args) {
		Orc o = new Orc("jkdf",39);
		System.out.println(o.getVali());
		//The method getVali() from the type Orc is not visible
		//要求改为public
		
	}
}
