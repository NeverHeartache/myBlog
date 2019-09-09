package org.interview.case01;

import org.mindview.util.StaicInterface;

//此例子说明，自己调自身构造器内的打印语句不显示；
public class FdsExe implements StaicInterface {
	private static FDS fdss;
	public static void main(String[] args) {
		FDS.main(args);
		System.err.println( fdss == null? "没初始化" : "已经初始化了");
		fdss = new FDS();
		System.err.println( fdss == null? "没初始化" : "已经初始化了");
	}
	static {
		StaicInterface.showStatic();
		System.err.println( "妈了个八字");
	}
	
	private void showStatic() {
		// TODO Auto-generated method stub
	}
}

