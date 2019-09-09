package org.mindview.util;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.SimpleFormatter;
public class Equipment {
	public static void main(String[] args) {
		long m = System.currentTimeMillis();
		Date date = Calendar.getInstance().getTime();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dStr = sf.format(date);
		int len = dStr.length();
		System.out.println(m+"--"+dStr+"--"+len);
	}
}
