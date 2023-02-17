package BeansTest;

import java.sql.*;

// DAO 역할 : CRUD + DB연동
public class logonDBBean {

	private static logonDBBean instance = new logonDBBean();
	
	public static logonDBBean getInstance() {
		return instance;
	}

	private logonDBBean() {}
	
	private Connection getConnection() throws Exception {
		Connection conn = null;
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/member";
		String dbId = "heo";
		String dbPass = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		System.out.println("DB 연결 성공!!!");
		
		return conn;
	}
	
	// 데이터 입력 로직 작성
	public void insertMember(logonDataBean ldb) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement("insert into MEMBER values(?,?,?,?)");
			pstmt.setString(1, ldb.getId());
			pstmt.setString(2, ldb.getPasswd());
			pstmt.setString(3, ldb.getName());
			pstmt.setTimestamp(4, ldb.getReg_date());
			pstmt.executeUpdate();
			System.out.println("회원정보 입력이 성공 했습니다.~");
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if(pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if(conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
	}
	
	// 사용자 로그인 아이디와 비밀번호 체크
	public int userCheck(String id, String passwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int x = -1;
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement("select passwd from MEMBER where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbpasswd = rs.getString("passwd");
				if(dbpasswd.equals(passwd))
					x = 1;
				else
					x = 0;
			} else 
				x = -1;
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
			return x;
	}
}
