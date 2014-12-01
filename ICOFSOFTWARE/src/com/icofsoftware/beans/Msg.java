package com.icofsoftware.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.icofsoftware.utils.StringUtils;

public class Msg implements Serializable{
	
	private static final long serialVersionUID = -4406649401524014555L;
	private int mid;
	private int aid;
	private String content;
	private long postdate;
	private String filename;
	private int filetype;
	private String location;
	private boolean zaned;
	public boolean isZaned() {
		return zaned;
	}
	public void setZaned(boolean zaned) {
		this.zaned = zaned;
	}
	public List<Comment> clist = new ArrayList<Comment>();
	
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
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
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getFiletype() {
		return filetype;
	}
	public void setFiletype(int filetype) {
		this.filetype = filetype;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDateString(){
		return StringUtils.getDate(postdate);
	}
	public String getZanString(){
		if(zaned)
			return "disabled='true'";
		return "";
	}
}
