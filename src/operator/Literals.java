package operator;

//: operators/Literals.java
import static net.mindview.util.Print.*;

public class Literals {
public static void main(String[] args) {
  int i1 = 0x2f; // Hexadecimal (lowercase)  2*16+15=32+15=47
  print(i1);
  print("i1: " + Integer.toBinaryString(i1)+"\n");
  
  
  int i2 = 0X2F; // Hexadecimal (uppercase)
  print(i2);
  print("i2: " + Integer.toBinaryString(i2)+"\n");
  
  
  int i3 = 0177; // Octal (leading zero) 
  print(i3);
  print("i3: " + Integer.toBinaryString(i3)+"\n");
  
  
  char c = 0xffff; // max char hex value
  print(c);
  print("c: " + Integer.toBinaryString(c)+"\n");
  
  
  byte b = 0x7f; // max byte hex value
  print("b is :"+b);
  print("b: " + Integer.toBinaryString(b)+"\n");
  
  
  short s = 0x7fff; // max short hex value
  print("s is :"+s);
  print("s: " + Integer.toBinaryString(s));
  
  
  long n1 = 200L; // long suffix
  print(n1);
  
  long n2 = 200l; // long suffix (but can be confusing)
  print(n2);
  
  long n3 = 200;
  print(n3);
  
  float f1 = 1;
  print(f1);
  
  float f2 = 1F; // float suffix
  print(f2);
  
  float f3 = 1f; // float suffix
  double d1 = 1d; // double suffix
  
  print(d1);
  double d2 = 1D; // double suffix
  // (Hex and Octal also work with long)
}
} /* Output:
i1: 101111
i2: 101111
i3: 1111111
c: 1111111111111111
b: 1111111
s: 111111111111111
*///:~
