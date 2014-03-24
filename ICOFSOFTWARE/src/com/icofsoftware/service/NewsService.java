package com.icofsoftware.service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.icofsoftware.beans.NewsBean;
import com.icofsoftware.db.DBHelper;

public class NewsService {

	public NewsBean getIntroductionNews(){
		NewsBean nb = new NewsBean();
		String sql = "select a.nid nid,a.title title,a.content content,a.postdate postdate,a.type type,b.username username from news a, admins b where type = 1 and a.posterid = b.aid";
		DBHelper db = new DBHelper();
		ResultSet rs = null;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				nb.setNid(rs.getInt("nid"));
				nb.setTitle(rs.getString("title"));
				nb.setContent(rs.getString("content"));
				nb.setPostdate(rs.getDate("postdate").toString());
				nb.setUsername(rs.getString("username"));
				nb.setType(rs.getInt("type"));
				
				System.out.print("~~getSchoolinfo~~"+nb.getTitle()+nb.getContent()+nb.getPostdate()+nb.getType());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
		}
		return nb;
	}
	
	public List<NewsBean> getMSENews(){
		List<NewsBean> nblist = new ArrayList<NewsBean>();
		NewsBean nb = new NewsBean();
		String sql = "select a.nid nid,a.title title,a.content content,a.postdate postdate,a.type type,b.username username from news a, admins b where type = 2 and a.posterid = b.aid";
		DBHelper db = new DBHelper();
		ResultSet rs = null;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				nb.setNid(rs.getInt("nid"));
				nb.setTitle(rs.getString("title"));
				nb.setContent(rs.getString("content"));
				nb.setPostdate(rs.getDate("postdate").toString());
				nb.setUsername(rs.getString("username"));
				nb.setType(rs.getInt("type"));
				
				System.out.print("~~getSchoolinfo~~"+nb.getTitle()+nb.getContent()+nb.getPostdate()+nb.getType());
				nblist.add(nb);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
		}
		return nblist;
	}
}
