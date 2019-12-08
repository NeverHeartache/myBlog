package org.interview.case01;

public class FDS {
	private static int m;
	private static char n;
	
	public FDS() {
		super();
		m=10;
		System.err.println("歪日"+m);
	}
	public static void main(String[] args){
		System.err.println("this is a error message...");
//		List list = new LinkedList();
		System.err.println(m+"--"+n);
	}
	static {
//		m = 1;
		System.err.println("woc"+m);
	}
}
/*
 * 
 * 
woc
this is a error message...
0--*/
