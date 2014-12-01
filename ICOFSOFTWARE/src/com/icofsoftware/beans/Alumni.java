package com.icofsoftware.beans;

import java.io.Serializable;

import com.icofsoftware.service.AlumniService;

public class Alumni implements Serializable{

	private static final long serialVersionUID = 694431524563911900L;
	private int aid;
	private String name;
	private String email;
	private String stuno;
	private String classtype;
	private String enrollyear;
	private String sname;
	private String cname;
	private String description;
	private String curcity;
	private String curcountry;
	private String filename;

	public String getFilename() {
		return AlumniService.getFileNameById(aid);
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getCurcity() {
		return curcity == null ? "" : curcity;
	}

	public void setCurcity(String curcity) {
		this.curcity = curcity;
	}

	public String getCurcountry() {
		return curcountry == null ? "" : curcountry;
	}

	public void setCurcountry(String curcountry) {
		this.curcountry = curcountry;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStuno() {
		return stuno;
	}

	public void setStuno(String stuno) {
		this.stuno = stuno;
	}

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

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		if (sname == null) {
			this.sname = "";
			return;
		}
		this.sname = sname;
	}

	public String getCname() {
		return cname == null ? "" : cname;
	}

	public void setCname(String cname) {
		if (cname == null) {
			this.cname = "";
			return;
		}
		this.cname = cname;
	}

	public String getDescription() {
		return description == null ? "" : description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isWork() {
		if (sname == null || sname.length() < 1) {
			return true;
		}
		return false;
	}
}
