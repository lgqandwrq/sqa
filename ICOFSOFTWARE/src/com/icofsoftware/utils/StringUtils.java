package com.icofsoftware.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class StringUtils {
	public static void main(String[] args){
		Calendar c = Calendar.getInstance();
		long a = c.getTimeInMillis();
		c.add(Calendar.MINUTE, 1);
		System.out.println(""+(c.getTimeInMillis()));
	}
	private static SimpleDateFormat formattoday = new SimpleDateFormat(
			"H:mm");
	private static SimpleDateFormat formatday = new SimpleDateFormat("M-d");
	private static SimpleDateFormat formatmonth = new SimpleDateFormat("M-d");
	private static SimpleDateFormat formatyear = new SimpleDateFormat(
			"yyyy-M-d");
	private static SimpleDateFormat formatfull = new SimpleDateFormat(
			"yyyy-M-d H:mm:ss");

	public static String getDate(long date) {
		long introvel = System.currentTimeMillis() - date;
		if (introvel > 0 && introvel / 60000 < 1) {
			return "Just Now";
		}
		Calendar c = Calendar.getInstance();
		int year = c.get(Calendar.YEAR);
		int month = c.get(Calendar.MONTH);
		int day = c.get(Calendar.DAY_OF_MONTH);

		c.setTimeInMillis(date);
		if (c.get(Calendar.YEAR) == year) {
			if (c.get(Calendar.MONTH) == month) {
				if (c.get(Calendar.DAY_OF_MONTH) == day) {
					return formattoday.format(c.getTime());
				}
				return formatday.format(c.getTime());
			}
			return formatmonth.format(c.getTime());
		}
		return formatyear.format(c.getTime());

	}
	public static String getCurDate(){
		return formatfull.format(new Date());
	}
}
