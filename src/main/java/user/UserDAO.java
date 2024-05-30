package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import common.GetConn;

public class UserDAO {
	private Connection conn = GetConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	public void pstmtClose() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {}
		}
	}
	
	public void rsClose() {
		if(rs != null) {
			try {
				rs.close();
			} catch (Exception e) {} 
			finally {
				pstmtClose();
			}
		}
	}

	
	//가입하기
	public int setInputUserInfo(UserVO vo) {
		int res = 0;
		try {
			sql = "insert into userInfo values(default, ?,?,?,?,?,?,?,?, default)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setInt(2, vo.getStudentId());
			pstmt.setInt(3, vo.getPwd());
			pstmt.setString(4, vo.getDepartment());
			pstmt.setString(5, vo.getPhoneNum());
			pstmt.setString(6, vo.getExpCheck());
			pstmt.setInt(7, vo.getExpTime());
			pstmt.setString(8, vo.getExpOk());
			res = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("SQL 오류 : "+e.getMessage());
		} finally {
			pstmtClose();
		}
		
		
		return res;
	}

	public UserVO userLoginInfo(int studentId, int pwd) {
		UserVO vo = new UserVO();
		try {
			sql = "select * from userInfo where studentId = ? and pwd = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, studentId);
			pstmt.setInt(2, pwd);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo.setIdx(rs.getInt("idx"));
				vo.setName(rs.getString("name"));
				vo.setStudentId(rs.getInt("studentId"));
				vo.setPwd(rs.getInt("pwd"));
				vo.setDepartment(rs.getString("department"));
				vo.setPhoneNum(rs.getString("phoneNum"));
				vo.setExpCheck(rs.getString("expCheck"));
				vo.setExpTime(rs.getInt("expTime"));
				vo.setExpOk(rs.getString("expOk"));
				vo.setJoinCheck(rs.getInt("joinCheck"));
			}
			
		} catch (SQLException e) {
			System.out.println("SQL 오류 : "+e.getMessage());
		} finally {
			rsClose();
		}
		
		return vo;
	}

	

	
	
	
}
