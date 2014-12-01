package com.icofsoftware.service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.icofsoftware.beans.Comment;
import com.icofsoftware.beans.Msg;
import com.icofsoftware.beans.UserBean;
import com.icofsoftware.db.DBHelper;
import com.icofsoftware.utils.StringUtils;

public class MsgService {

	public static List<Msg> getMsgList(int page, int type, Object ouser, String filter) {
		String f = "";
		if(filter!=null ){
			if(filter.contains("Pad") || filter.contains("Phone") || filter.contains("Android")){
				if(type ==0){
					f = " where msg.filetype<3 ";
				}else{
					f = " and msg.filetype<3 ";
				}
			}
		}
		
		UserBean user = (UserBean) ouser;

		List<Msg> list = new ArrayList<Msg>();
		Msg m = new Msg();

		String sql = null;
		if (type == 0) {
			sql = "SELECT msg.mid, msg.aid, content, postdate, filename, filetype, location, zid "
					+ "FROM msg left outer join zans on ( msg.mid = zans.mid and zans.aid = " + user.getId()+ " ) "+ f
				   + " order by postdate desc limit 0, 30";
		} else if (type == 1) {
			sql = "SELECT msg.mid, msg.aid, content, postdate, filename, filetype, location, zid "
					+ "FROM msg left outer join zans on ( msg.mid = zans.mid ) where msg.aid = "+ user.getId() +f+
					" order by postdate desc limit 0, 30";
		} else if (type == 2) {
			sql = "SELECT msg.mid, msg.aid, content, postdate, filename, filetype, location, zid "
					+ "FROM msg right outer join zans on ( msg.mid = zans.mid ) where zans.aid = " + user.getId()+ f  
					+ " order by postdate desc limit 0, 30";
		}
		String sql2 = "SELECT cid, mid, content, postdate, toaid, isread, aid FROM comments WHERE mid = ";
		DBHelper db = new DBHelper();
		ResultSet rs = null;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				m = new Msg();
				m.setMid(rs.getInt(1));
				m.setAid(rs.getInt(2));
				m.setContent(rs.getString(3));
				m.setFiletype(rs.getInt(6));
				m.setFilename(rs.getString(5));
				m.setPostdate(rs.getTimestamp(4).getTime());
				if (rs.getInt(8) > 0) {
					m.setZaned(true);
				}

				// add comments

				ResultSet rs2 = db.executeQuery(sql2 + m.getMid());
				while (rs2.next()) {
					Comment c = new Comment();
					c.setCid(rs2.getInt(1));
					c.setMid(rs2.getInt(2));
					c.setContent(rs2.getString(3));
					c.setPostdate(rs2.getTimestamp(4).getTime());
					c.setToaid(rs2.getInt(5));
					c.setAid(rs2.getInt(7));
					m.clist.add(c);
				}
				db.free(rs2);

				list.add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
			db.free();
		}
		return list;
	}


	public static int deleteMsg(int mid) {
		String sql = "delete from msg where mid=" + mid;
		DBHelper db = new DBHelper();
		int res = db.executeNonQuery(sql);
		db.free();
		return res;
	}

	public static int insertFavor(String mid, String aid) {
		String sql = "insert into zans (aid, mid) values (" + aid + ", " + mid
				+ ");";
		DBHelper db = new DBHelper();
		int res = db.executeNonQuery(sql);
		db.free();
		return res;
	}

	public static int insertMsg(String content, String ftype, String filename,
			int aid) {
		String sql = "insert into msg (aid, content, postdate, filename, filetype) values ("
				+ aid
				+ ", '"
				+ content
				+ "', '"
				+ StringUtils.getCurDate()
				+ "', '" + filename + "', " + ftype + ");";
		DBHelper db = new DBHelper();
		int res = db.executeNonQuery(sql);
		db.free();
		return res;
	}

	public static int insertComment(String content, int mid, int aid, int toaid) {
		String sql = "insert into comments (mid, content, postdate, toaid, isread, aid) values ("
				+ mid
				+ ", '"
				+ content
				+ "', '"
				+ StringUtils.getCurDate()
				+ "', " + toaid + ", 0 , " + aid + ");";
		DBHelper db = new DBHelper();
		return db.executeNonQuery(sql);
	}
}
