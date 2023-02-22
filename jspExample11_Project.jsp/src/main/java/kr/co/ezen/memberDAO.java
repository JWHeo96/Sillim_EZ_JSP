package kr.co.ezen;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

// CRUD
public class memberDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	// DB연결 설정 부분
	public Connection getConnection() {
		String dbId = "heo";
		String dbPwd = "1234";
		String dbUri = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbDriver = "oracle.jdbc.OracleDriver";
		
		try {
			
			Class.forName(dbDriver);
			conn = DriverManager.getConnection(dbUri,dbId, dbPwd);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public void insertMember(memberBean mBean) {
		
		try {
		
			conn = getConnection();	// DB 연결 시도
			String sql = "insert into campingmember values(?,?,?,?,?,?,?,?,?)";

			PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,mBean.getId());
				pstmt.setString(2,mBean.getPass1());
				pstmt.setString(3,mBean.getName());
				pstmt.setString(4,mBean.getEmail());
				pstmt.setString(5,mBean.getTel());
				pstmt.setString(6,mBean.getHobby());
				pstmt.setString(7,mBean.getJob());
				pstmt.setString(8,mBean.getAge());
				pstmt.setString(9,mBean.getInfo());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try{ if(pstmt != null) pstmt.close(); } catch (SQLException e) {}
			try{ if(conn != null) conn.close(); } catch (SQLException e) {}
		}
	}
	
	// 모든 회원 정보를 조회
	public Vector<memberBean> selectMember() {
		Vector<memberBean> v = new Vector<>();
		
		try {
			conn = getConnection();
			
			String sql = "select * from campingmember order by name";
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				memberBean mBean = new memberBean();
				
				mBean.setId(rs.getString("id"));
				mBean.setName(rs.getString("name"));
				mBean.setEmail(rs.getString("email"));
				mBean.setTel(rs.getString("tel"));
				mBean.setHobby(rs.getString("hobby"));
				mBean.setJob(rs.getString("job"));
				mBean.setAge(rs.getString("age"));
				mBean.setInfo(rs.getString("info"));
				
				v.add(mBean); // 벡터에서 mBean의 내용을 참조하도록 설정
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(rs != null) rs.close(); } catch (SQLException e) {}
			try { if(pstmt != null) pstmt.close(); } catch (SQLException e) {}
			try { if(conn != null) conn.close(); } catch (SQLException e) {}
		}
		
		return v;
	}
	
	public memberBean oneSelectMember(String id) {
		
		memberBean mBean = new memberBean();
		try {
			conn = getConnection();
			
			String sql = "select * from campingmember where id=? order by name";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {

				
				mBean.setId(rs.getString("id"));
				mBean.setName(rs.getString("name"));
				mBean.setEmail(rs.getString("email"));
				mBean.setTel(rs.getString("tel"));
				mBean.setHobby(rs.getString("hobby"));
				mBean.setJob(rs.getString("job"));
				mBean.setAge(rs.getString("age"));
				mBean.setInfo(rs.getString("info"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(rs != null) rs.close(); } catch (SQLException e) {}
			try { if(pstmt != null) pstmt.close(); } catch (SQLException e) {}
			try { if(conn != null) conn.close(); } catch (SQLException e) {}
		}
		
		return mBean;
	}
	
	public String getPassword(String id) {
		String password = null;
		try {
			conn = getConnection();
			
			String sql = "select pass1 from campingmember where id =?";
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				
			rs = pstmt.executeQuery();
			if(rs.next()) {
				password = rs.getString(1);
			}
		} catch (Exception e ) {
			e.printStackTrace();
		} finally {
			try { if(rs != null) rs.close(); } catch (SQLException e) {}
			try { if(pstmt != null) pstmt.close(); } catch (SQLException e) {}
			try { if(conn != null) conn.close(); } catch (SQLException e) {}
		}
		
		return password;
	}
	
	// 데이터 수정
	public void updateMember(memberBean mBean) {
		try {
			conn = getConnection();
			
			String sql = "update campingmember set name=?, email=?, tel=?, hobby=?, job=?, age=? where id=? ";
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, mBean.getName());
				pstmt.setString(2, mBean.getEmail());
				pstmt.setString(3, mBean.getTel());
				pstmt.setString(4, mBean.getHobby());
				pstmt.setString(5, mBean.getJob());
				pstmt.setString(6, mBean.getAge());
				pstmt.setString(7, mBean.getId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(pstmt != null) pstmt.close(); } catch (SQLException e) {}
			try { if(conn != null) conn.close(); } catch (SQLException e) {}
		}
	}
	
	// 데이터 삭제
	public void deleteMember(memberBean mBean) {
		try {
			conn = getConnection();
			
			String sql = "delete from campingmember where id=? ";
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, mBean.getId());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(pstmt != null) pstmt.close(); } catch (SQLException e) {}
			try { if(conn != null) conn.close(); } catch (SQLException e) {}
		}
	}
}
