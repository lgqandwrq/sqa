package com.icofsoftware.beans;

import java.io.Serializable;

import com.icofsoftware.service.AlumniService;

public class UserBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -340478866423735005L;
	private String useremail;
	private String userpwd;
	private int uid;
	private int type;
	private String filename;
	private String realname;
	private String username;
	private String enrollyear;
	private String classtype;
	
	public String getClasstype() {
		return classtype;
	}

	public void setClasstype(String classtype) {
		this.classtype = classtype;
	}

	public String getEnrollyear() {
		return enrollyear;
	}

	public void setEnrollyear(String enrollyear) {
		this.enrollyear = enrollyear;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getFilename() {
		return  AlumniService.getFileNameById(uid);
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public static final int ADMIN = 0;
	public static final int ALUMNI = 1;

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getId() {
		return uid;
	}

	public void setId(int uid) {
		this.uid = uid;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUserpwd() {
		return userpwd;
	}

	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}

}
