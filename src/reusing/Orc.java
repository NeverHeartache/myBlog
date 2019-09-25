package reusing;
import static net.mindview.util.Print.*;

class Villain {
	final String touch;
	private String name;
	protected void set(String nm) { name = nm; }
	public Villain(String name) { 
		this.name = name; 
		this.touch = "TMD";
	}
	public String toString() {
		return "I'm a Villain and my name is " + name + "and touch is "+touch;
	}
}	

public class Orc extends Villain {
	private int orcNumber;
	private int vali = 3;
	public int m = 10;

	protected int getVali(){
		return this.vali;
	}
	public Orc(String name, int orcNumber) {
		super(name);
		this.orcNumber = orcNumber;
	}
	public void change(String name, int orcNumber) {
		set(name); // Available because it's protected
		this.orcNumber = orcNumber;
	}
	public String toString() {
		return "Orc " + orcNumber + ": " + super.toString();
	}	
	public static void main(String[] args) {
		Orc orc = new Orc("Limburger", 12);
		print(orc);
		orc.change("Bob", 19);
		print(orc);
		
		print(orc.touch);
	}
}
