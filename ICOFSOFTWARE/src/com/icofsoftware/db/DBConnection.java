package com.icofsoftware.db;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnection {
	public static void main(String[] args) {
		String sql = "select * from admins";
		DBHelper db = new DBHelper();
		
		ResultSet rs = db.executeQuery(sql);
		
		try {
			rs.next();
			System.out.println(rs.getString("username")+"");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
