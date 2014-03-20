package com.icofsoftware.service;

import java.sql.ResultSet;

import com.icofsoftware.beans.UserBean;
import com.icofsoftware.db.DBHelper;

public class LoginService {

	public static boolean CheckLogin(UserBean user) {
		String uemail = user.getUseremail();
		String upwd = user.getUserpwd();
		String checksql = "select username,email,pwd from admins";
		DBHelper db = new DBHelper();
		ResultSet rs = null;
		try {
			//db.getConnection();
			rs = db.executeQuery(checksql);
			while (rs.next()) {
				if (uemail.equals(rs.getString("email"))
						&& upwd.equals(rs.getString("pwd"))) {
					return true;
	                
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
		}
		return false;
	}
}
