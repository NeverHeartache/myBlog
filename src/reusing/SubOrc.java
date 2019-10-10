package reusing;

public class SubOrc extends Orc {
	public SubOrc(String name, int orcNumber){
		super(name, orcNumber);
	}
	public static void main(String[] args) {
		SubOrc so = new SubOrc("protected", 11);
		System.out.println(so.getVali());
		SecOrc.main(args);
		System.out.println("\n");
		Orc.main(args);
	}
}
