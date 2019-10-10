package reusing;

public class SecOrc {
	public static void main(String[] args) {
		Orc o = new Orc("jkdf",39);
		o.set("protected");
		System.out.println(o.getVali());
		
		System.out.printf("this is my test for the format method,%f\n",89.0);
	}
}
