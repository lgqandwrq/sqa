package com.icofsoftware.beans;

import java.io.Serializable;

public class NewsBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1258129955084663988L;
	private int nid;
	private String title;
	private String content;
	private String postdate;
	private int posterid;
	private String username;
	
	private int type;
	
	public int getNid() {
		return nid;
	}
	public String getsNid() {
		return nid+"";
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPostdate() {
		return postdate;
	}
	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}
	public int getPosterid() {
		return posterid;
	}
	public void setPosterid(int posterid) {
		this.posterid = posterid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
}
