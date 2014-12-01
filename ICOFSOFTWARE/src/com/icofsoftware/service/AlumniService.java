package com.icofsoftware.service;

import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;

import com.icofsoftware.beans.Alumni;
import com.icofsoftware.db.DBHelper;

public class AlumniService {

	private static Map<Integer, SnapshotAlumni> map = null;

	public static String getNameById(int id) {
		if (map == null) {
			buildAlunmiList();
		}
		if (map.get(id) == null)
			return "";
		return map.get(id).name;
	}

	public static String getFileNameById(int id) {
		String res = null;
		if (map == null) {
			buildAlunmiList();
		}
		if (map.get(id) != null) {
			res = map.get(id).filename;
		}

		return res == null ? "Koala.jpg" : res;
	}

	public static synchronized void buildAlunmiList() {
		map = new HashMap<Integer, SnapshotAlumni>();

		String sql = "SELECT uid, realname, headpic " + "FROM alumni";
		DBHelper db = new DBHelper();
		ResultSet rs = null;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				map.put(rs.getInt(1),
						new SnapshotAlumni(rs.getString(2), rs.getString(3)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
			db.free();
		}
	}

	public static class SnapshotAlumni {
		public SnapshotAlumni(String name, String filename) {
			this.name = name;
			this.filename = filename;
		}

		public String name;
		public String filename;
	}

	public static Alumni getAlumniById(int id) {
		Alumni n = null;
		String sql = "SELECT uid, realname, email, username, classtype, enrollyear, curshcool, curcompany, description, curcountry, curcity, headpic "
				+ "FROM alumni where uid = " + id;
		DBHelper db = new DBHelper();
		ResultSet rs = null;
		try {
			rs = db.executeQuery(sql);
			if (rs.next()) {
				n = new Alumni();
				n.setAid(rs.getInt(1));
				n.setName(rs.getString(2));
				n.setEmail(rs.getString(3));
				n.setStuno(rs.getString(4));
				n.setClasstype(rs.getString(5));
				n.setEnrollyear(rs.getString(6));
				n.setSname(rs.getString(7));
				n.setCname(rs.getString(8));
				n.setDescription(rs.getString(9));
				n.setCurcountry(rs.getString(10));
				n.setCurcity(rs.getString(11));
				n.setFilename(rs.getString(12));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free(rs);
			db.free();
		}
		return n;
	}

	public static void updateAlumni(int aid, String country, String city,
			String sname, String cname, String sorc, String des, String filename) {
		String sql = "";
		if (sorc.equals("1")) {
			sql = "update alumni set curcountry='" + country + "', curcity='"
					+ city + "', curshcool='" + sname + "', curcompany='' "
					+ ", description='" + des + getFilename(filename)
					+ " where uid=" + aid;
		} else if (sorc.equals("2")) {
			sql = "update alumni set curcountry='" + country + "', curcity='"
					+ city + "', curshcool='', curcompany='" + cname + "' "
					+ ", description='" + des + getFilename(filename)
					+ " where uid=" + aid;
		}
		DBHelper db = new DBHelper();
		try {
			db.executeNonQuery(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free();
		}
		AlumniService.buildAlunmiList();
	}

	private static String getFilename(String filename) {
		if (filename == null || filename.length() == 0)
			return "' ";
		else
			return "', headpic='" + filename + "' ";
	}

	public static boolean selectP1(String oldp, int aid) {
		DBHelper db = new DBHelper();
		boolean re = false;
		try {
			ResultSet rs = db.executeQuery("select pwd from alumni where uid="
					+ aid);
			if (rs.next()) {
				if (rs.getString(1).equals(oldp)) {
					db.free(rs);
					re = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free();
		}
		return re;
	}

	public static boolean updateP1(String newp, int aid) {
		DBHelper db = new DBHelper();
		try {
			db.executeNonQuery("update alumni set pwd='" + newp + "'where uid="
					+ aid);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.free();
		}
		return false;
	}
}
