package study2.ajax;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.GetConn;
import member.MemberVO;

public class UserDAO {
	// 싱글톤을 이용한 DB연결 객체 연결하기...
	GetConn getConn = GetConn.getInstance();
	
	private Connection conn = getConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	UserVO vo = null;
	

	// user의 정보를 모두 가져오기
	public ArrayList<UserVO> getUerList() {
		ArrayList<UserVO> vos = new ArrayList<>();
		try {
			sql = "select * from user order by idx desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo= new UserVO();
				
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setName(rs.getString("name"));
				vo.setAge(rs.getInt("age"));
				vo.setAddress(rs.getString("address"));
				
				vos.add(vo);
			}
		}	catch (SQLException e) {
				System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
				getConn.rsClose();
		}
		return vos;
	}

	// user 개별조회 검색
	public UserVO getUserSearch(String mid) {
		try {
			sql = "select * from user where mid =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo= new UserVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setMid(rs.getString("mid"));
				vo.setName(rs.getString("name"));
				vo.setAge(rs.getInt("age"));
				vo.setAddress(rs.getString("address"));
			}
		}	catch (SQLException e) {
				System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
				getConn.rsClose();
		}
		return vo;
	}

	// user 삭제
	public String setUserDel(String mid) {
		String res = "0";
		try {
			sql = "delete from user where mid =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);
			pstmt.executeUpdate();
			
			res="1";
		}	catch (SQLException e) {
				System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
				getConn.pstmtClose();
		}
		return res;
	}
	//유저 수정하기
	public void userUpdate(UserVO vo) {
		try {
			sql = "update user set mid =?, name=?, age=?, address=? where idx =?"; 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getName());
			pstmt.setInt(3, vo.getAge());
			pstmt.setString(4, vo.getAddress());
			pstmt.setInt(5, vo.getIdx());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
				System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
				getConn.pstmtClose();
		}
	}
 //유저 등록하기
	public void userInput(UserVO vo) {
		try {
			sql = "insert into user values (default,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMid());
			pstmt.setString(2, vo.getName());
			pstmt.setInt(3, vo.getAge());
			pstmt.setString(4, vo.getAddress());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
				System.out.println("SQL 오류 : " + e.getMessage());
		} finally {
				getConn.pstmtClose();
		}
	}
}