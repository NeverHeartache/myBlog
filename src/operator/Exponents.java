package operator;

public class Exponents {
	public static void main(String[] args) {
		// Uppercase and lowercase 'e' are the same:
		float expFloat = 1.39e-43f;
		expFloat = 1.39E-43f;
		System.out.println(expFloat);
		double expDouble = 47e47d; // 'd' is optional
		double expDouble2 = 47e47; // Automatically double
		System.out.println(expDouble);
		System.out.println(Double.MAX_EXPONENT);
		System.out.println(Double.MAX_VALUE);
		System.out.println(Double.MIN_VALUE);
	}
} /* Output:
	1.39E-43
	4.7E48
 *///:~
