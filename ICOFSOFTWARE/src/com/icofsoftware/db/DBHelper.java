package com.icofsoftware.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DBHelper {

	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:MySQL://127.0.0.1:3306/";
	private String username = "root";
	private String password = "";

	public static int MYSQL = 0;

	private String dbname = "icofsoftware";

	public boolean isvalid = false;

	private Connection conn = null;
	Statement stmt = null;

	public Connection getConnection() {
		conn = null;
		try {
			Class.forName(driver);
			if (null == conn) {
				conn = DriverManager.getConnection(url + dbname, username,
						password);
			}
		} catch (Exception e) {

		}
		isvalid = true;
		if (conn == null) {
			isvalid = false;
		}
		return conn;
	}

	public Connection refreshConnection() {
		conn = null;
		try {
			Class.forName(driver);
			conn = DriverManager
					.getConnection(url + dbname, username, password);
		} catch (Exception e) {

		}
		isvalid = true;
		if (conn == null) {
			isvalid = false;
		}
		return conn;
	}

	public int executeNonQuery(String sql) {
		int result = 0;
		Connection conn = null;
		if (stmt != null) {
			try {
				stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		stmt = null;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);
		} catch (SQLException err) {
			err.printStackTrace();
			free(null, stmt, conn);
		} finally {
			free(null, stmt, conn);
		}
		return result;
	}

	public ResultSet executeQuery(String sql) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			if (conn == null) {
				System.out.println("~~null");
			}
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		} catch (SQLException err) {
			err.printStackTrace();
			free(rs, stmt, conn);
		}
		return rs;
	}

	public int executeQueryReturnID(String sql) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		int r = 0;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			stmt.execute(sql, Statement.RETURN_GENERATED_KEYS);
			rs = stmt.getGeneratedKeys();
			if (rs.next())
				r = rs.getInt(1);

		} catch (Exception err) {
			err.printStackTrace();
			free(rs, stmt, conn);
		}
		return r;
	}

	public int getCount(String sql) {
		int result = 0;
		ResultSet rs = null;
		try {
			rs = executeQuery(sql);
			rs.last();
			result = rs.getRow();
		} catch (SQLException err) {
			free(rs);
			err.printStackTrace();
		} finally {
			free(rs);
		}
		return result;
	}

	public static void free(ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException err) {
			err.printStackTrace();
		}
	}

	public static void free(Statement st) {
		try {
			if (st != null) {
				st.close();
			}
		} catch (SQLException err) {
			err.printStackTrace();
		}
	}

	public static void free(Connection conn) {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException err) {
			err.printStackTrace();
		}
	}

	public static void free(ResultSet rs, Statement st, Connection conn) {
		free(rs);
		free(st);
		free(conn);
	}

	public void free() {
		if (conn != null)
			try {
				conn.close();
				if (stmt != null)
					stmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
}
