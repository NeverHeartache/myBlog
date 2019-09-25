package operator;

import java.util.Random;

public class CastingNumbers {
	public static void main(String[] args) {
		double above = 0.7, below = 0.4;
		float fabove = 0.7f, fbelow = 0.4f;
		System.out.println("(int)above: " + (int)above);
		System.out.println("(int)below: " + (int)below);
		System.out.println("(int)fabove: " + (int)fabove);
		System.out.println("(int)fbelow: " + (int)fbelow);
		
		System.out.println("\n");
		RoundingNumbers.round(args);
		System.out.println("\n");
		OrigRandom ord = new OrigRandom();
		double rd = 0.00;// ord.getRandom();
		while( rd < 0.99){
			rd = ord.getRandom();
			System.out.println(rd);
		}
		System.out.println("123456789");
		System.out.println(rd);
		
		System.out.println("\n");
		String[] sss = ord.getStarray();
		for(int i = 0; i < sss.length; i++){
			System.out.println(sss[i]);
		}
	}
} /* Output:
	(int)above: 0
	(int)below: 0
	(int)fabove: 0
	(int)fbelow: 0
 *///:~
class RoundingNumbers {
	public static void round(String[] args) {
		
		float f = 0.77f;
		System.out.println((int)f);
		double above = 0.7, below = 0.4;
		float fabove = 0.7f, fbelow = 0.4f;
		System.out.println("Math.round(above): " + Math.round(above));
		System.out.println("Math.round(below): " + Math.round(below));
		System.out.println("Math.round(fabove): " + Math.round(fabove));
		System.out.println("Math.round(fbelow): " + Math.round(fbelow));
	}
	
	public void strSizeof(String str){
		System.out.println("str'length is :"+str.length());
	}
}

class OrigRandom{
	private int m ;
	private String[] starray = null;
	public OrigRandom(){
		starray = new String[6];
		starray[0] = "avz";
		starray[1] = "avzc";
		starray[2] = "avczx";
		starray[3] = "af";
		starray[4] = "ae";
		starray[5] = "ag";
		
	}
	double getRandom(){
		return Math.random();
	}
	void setM(int a){
		this.m = a;
	}
	int getM(){		
		return this.m;
	}
	String[] getStarray(){
		return this.starray;
	}
}
