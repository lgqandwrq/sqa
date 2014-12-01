package com.icofsoftware.service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.icofsoftware.beans.NewsBean;
import com.icofsoftware.db.DBHelper;

public class NewsService {

	public NewsBean getIntroductionNews() {
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

				System.out.print("~~getSchoolinfo~~" + nb.getTitle()
						+ nb.getContent() + nb.getPostdate() + nb.getType());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
		}
		return nb;
	}

	/**
	 * todo Get MSE+X Program Information
	 * 
	 * @return
	 * @author Jason
	 * @date 2014年3月24日
	 */
	public List<NewsBean> getMSENews() {
		List<NewsBean> nblist = new ArrayList<NewsBean>();
		NewsBean nb = null;
		String sql = "select a.nid nid,a.title title,a.content content,a.postdate postdate,a.type type,b.username username from news a, admins b where type = 2 and a.posterid = b.aid";
		DBHelper db = new DBHelper();
		ResultSet rs = null;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				nb = new NewsBean();
				nb.setNid(rs.getInt("nid"));
				nb.setTitle(rs.getString("title"));
				nb.setContent(rs.getString("content"));
				nb.setPostdate(rs.getDate("postdate").toString());
				nb.setUsername(rs.getString("username"));
				nb.setType(rs.getInt("type"));

				// System.out.print("~~getSchoolinfo~~"+nb.getTitle()+nb.getContent()+nb.getPostdate()+nb.getType());
				nblist.add(nb);
			}
			System.out.println(nblist.get(0).getNid() + "~"
					+ nblist.get(0).getTitle());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
		}
		return nblist;
	}

	public NewsBean getNewsViewAll(int nid) {
		NewsBean nb = new NewsBean();
		String sql = "select a.nid nid,a.title title,a.content content,a.postdate postdate,a.type type,b.username username from news a, admins b where a.posterid = b.aid and a.nid = '"
				+ nid + "'";
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

				System.out.print("~~getViewAll~~" + nb.getTitle()
						+ nb.getContent() + nb.getPostdate() + nb.getType());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
		}
		return nb;
	}

	public List<NewsBean> getNormalNews() {
		List<NewsBean> nblist = new ArrayList<NewsBean>();
		NewsBean nb = null;
		String sql = "select a.nid nid,a.title title,a.content content,a.postdate postdate,a.type type,b.username username from news a, admins b where type = 3 and a.posterid = b.aid";
		DBHelper db = new DBHelper();
		ResultSet rs = null;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				nb = new NewsBean();
				nb.setNid(rs.getInt("nid"));
				nb.setTitle(rs.getString("title"));
				nb.setContent(rs.getString("content"));
				nb.setPostdate(rs.getDate("postdate").toString());
				nb.setUsername(rs.getString("username"));
				nb.setType(rs.getInt("type"));

				// System.out.print("~~getSchoolinfo~~"+nb.getTitle()+nb.getContent()+nb.getPostdate()+nb.getType());
				nblist.add(nb);
			}
			System.out.println(nblist.get(0).getNid() + "~"
					+ nblist.get(0).getTitle());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
		}
		return nblist;
	}

	public boolean postNewsItem(NewsBean nb) {
		boolean flag = false;
		int check = 0;
		String insertsql = "insert into news (title,content,posterid,postdate,type) values ('"
				+ nb.getTitle()
				+ "','"
				+ nb.getContent()
				+ "','"
				+ nb.getPosterid() + "','" + nb.getPostdate() + "',3)";
		DBHelper db = new DBHelper();
		ResultSet rs = null;
		try {
			System.out.println(insertsql);
			check = db.executeNonQuery(insertsql);
			if (check == 1) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
		}
		return false;
	}

}
