package com.icofsoftware.beans;

import java.io.Serializable;

import com.icofsoftware.utils.StringUtils;

public class Comment implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7262241519689606085L;
	private int cid;
	private int mid;
	private String content;
	private long postdate;
	private int toaid;
	private int isread;
	private int aid;
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public long getPostdate() {
		return postdate;
	}
	public void setPostdate(long postdate) {
		this.postdate = postdate;
	}
	public int getToaid() {
		return toaid;
	}
	public void setToaid(int toaid) {
		this.toaid = toaid;
	}
	public int getIsread() {
		return isread;
	}
	public void setIsread(int isread) {
		this.isread = isread;
	}
	public String getDateString(){
		return StringUtils.getDate(postdate);
	}
	
}
