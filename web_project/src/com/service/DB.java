package com.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DB {
	
	private static DB instance = new DB(); //전역 객체.-> 모든 사용자 공유가능
	
	public static DB getInstance() { 
		return instance;
	}
	
	public DB() {} 
	
	private Connection getConnection() throws Exception{
		
		Connection conn = null;
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/project";
		String dbId = "dahanweb";
		String dbPass = "dbs950623";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		return conn;
	}
	
	public void signup(Date member) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into signup values(?,?,?,?,?,?)");
			pstmt.setString(1,member.getId());
			pstmt.setString(2,member.getPw());
			pstmt.setString(3,member.getEmail());
			pstmt.setString(4,member.getName());
			pstmt.setString(5,member.getNicname());
			pstmt.setTimestamp(6,member.getReg_date());
			
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt != null)
				try {pstmt.close();}catch(SQLException sqle) {}
			if(conn != null)
				try {conn.close();}catch(SQLException sqle) {}
		}
		
	}

	private Connection Connection() {
		// TODO Auto-generated method stub
		return null;
	}

	public int userCheck(String id, String pw) throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String dbpw ="";
		int x = 1;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select pw from signup where id=?");
			pstmt.setString(1,id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbpw = rs.getString("pw");
				if(dbpw.equals(pw)) {
					x = 1; //성공
				}

				else {
					x = 0; //실패
				}

			}
			else
				x = 0; //실패

		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(rs != null)
				try {rs.close();}catch(SQLException sqle) {}
			if(pstmt != null)
				try {pstmt.close();}catch(SQLException sqle) {}
			if(conn != null)
				try {conn.close();}catch(SQLException sqle) {}
		}
		return x;
	}
	public boolean confirmId(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean result = false;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select id from signup where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null)
				try {rs.close();}catch(SQLException sqle) {}
			if(pstmt != null)
				try {pstmt.close();}catch(SQLException sqle) {}
			if(conn != null)
				try {conn.close();}catch(SQLException sqle) {}
		}
		return result;
	}
}
