package com.icofsoftware.service;

import java.sql.ResultSet;

import com.icofsoftware.beans.UserBean;
import com.icofsoftware.db.DBHelper;

public class LoginService {

	public static boolean CheckLogin(UserBean user) {
		String uemail = user.getUseremail();
		String upwd = user.getUserpwd();
		String checkadmin = "select aid, username,email,pwd,filename,realname from admins where email='"
				+ uemail + "' and pwd='" + upwd + "'";
		String checkalumni = "select uid, username,email,pwd,headpic,realname from alumni where email='"
				+ uemail + "' and pwd='" + upwd + "'";
		DBHelper db = new DBHelper();
		ResultSet rs = null;
		boolean result = false;
		try {
			rs = db.executeQuery(checkadmin);
			if (rs.next()) {
				user.setType(UserBean.ADMIN);
				user.setId(rs.getInt(1));
				user.setFilename(rs.getString(5));
				user.setRealname(rs.getString(6));
				System.out.println("LoginService~~"+user.getId());
				System.out.println("LoginService~~"+user.getRealname());
				System.out.println("LoginService~~"+user.getType());
				result = true;
			} else {
				rs = db.executeQuery(checkalumni);
				if (rs.next()) {
					user.setType(UserBean.ALUMNI);
					user.setId(rs.getInt(1));
					user.setFilename(rs.getString(5));
					user.setRealname(rs.getString(6));
					result = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
			db.free();
		}
		return result;
	}
	
	public static boolean Register(UserBean user){
		String uname = user.getUsername();
		String urealname = user.getRealname();
		String uemail = user.getUseremail();
		String upwd = user.getUserpwd();
		int uid = 0;
		
		String checkalumni = "select uid from alumni where username='"
				+ uname + "' and realname='" + urealname + "'";
		String reg_sql = "update alumni set email = '"+uemail+"',pwd = '"+upwd+"' where uid = ";
		DBHelper db = new DBHelper();
		ResultSet rs = null;
		boolean result = false;
		try{
			rs = db.executeQuery(checkalumni);
			if (rs.next()) {
				uid = rs.getInt("uid");
				user.setId(uid);
				result = true;
			}
			if(result){
				reg_sql += uid;
				System.out.println(reg_sql);
				db.executeNonQuery(reg_sql);
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}
}
