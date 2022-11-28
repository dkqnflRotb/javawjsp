package conn;
//데이터베이스 연결계체를 싱글톤으로 만든다.

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GetConn {
	private Connection conn = null;
	private PreparedStatement pstmt= null;
	private ResultSet rs = null;
	
	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/javaworks";
	private String user = "root";
	private String password = "1234";
	
	// 필드 만들때 바로 생성하게 써줌
	private static GetConn instance = new GetConn();
	
	// 객체 생성시에 DB연결  외부에서 생성못하게 private 로줌
	private GetConn() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 검색 실패");  //에러나면 라이브러리 mysql connector 확인
		} catch (SQLException e) {
			System.out.println("Database 연동실패");
		}
	}
	
	public Connection getConn() {
		return conn;
	}
	
	// 객체 소멸처리
	public void pstmtClose() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {}
		}
	}
	
	public void rsClose() {
		if(rs != null) {
			try {
				rs.close();
				pstmtClose();
			} catch (SQLException e) {}
		}
	}

	public static GetConn getInstance() {
		return instance;
	}
}
