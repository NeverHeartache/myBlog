package org;
import reusing.Orc;

public class SubOrc extends Orc {

	public SubOrc(String name, int orcNumber) {
		super(name, orcNumber);
	}
	public static void main(String[] args) {
		SubOrc so = new SubOrc("name",1);
		Orc o = new Orc("name",1);
		int i = so.getVali();
		
		System.out.println(i);
		o.m = 20;
		System.out.println(o.m);
	}
}
