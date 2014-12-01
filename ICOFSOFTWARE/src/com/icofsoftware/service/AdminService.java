package com.icofsoftware.service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.icofsoftware.beans.UserBean;
import com.icofsoftware.db.DBHelper;

public class AdminService {

	public boolean ImportAlumni(List<UserBean> importlist){
		boolean flag = false;
		int check = 0;
		UserBean ub = new UserBean();
		for(int i = 0;i < importlist.size();i++){
			System.out.print(importlist.size());
			ub = importlist.get(i);
			String insertsql = "insert into alumni (username,pwd,classtype,enrollyear,realname,type) values ('"
					+ ub.getUsername()
					+ "','"
					+ "123"
					+ "','"
					+ ub.getClasstype()
					+ "','" 
					+ ub.getEnrollyear()
					+ "','"
					+ ub.getRealname()
					+ "',1)";
			DBHelper db = new DBHelper();
			ResultSet rs = null;
			try {
				System.out.println(insertsql);
				db.executeNonQuery(insertsql);
				flag = true;
			} catch (Exception e) {
				flag = false;
				e.printStackTrace();
			} finally {
				db.free(rs);
			}
			
		}
		AlumniService.buildAlunmiList();
		return flag;
	}
}
