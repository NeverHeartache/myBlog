package operator;

//分配
public class Assignment {
	public static void main(String[] args) {
		Tank t1 = new Tank();
		Tank t2 = new Tank();
		t1.level = 9;
		t2.level = 47;
		System.out.println("t1 is :" + t1.level + "\n" + "t2 is :" + t2.level);
		
		t1 = t2;
		
	}
}
class Tank{
	int level;
}
