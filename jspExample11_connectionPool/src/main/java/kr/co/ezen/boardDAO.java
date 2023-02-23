package kr.co.ezen;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class boardDAO {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getConnection() {	
		try {
			Context initctx = new InitialContext();
			DataSource ds = (DataSource) initctx.lookup("java:comp/env/jdbc/OracleDB");
			
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertBoard(boardBean bBean) {
		getConnection();

		try {
			
			int ref = 0;
			int re_step=1;
			int re_level = 1;
			
			String sql = "select max(ref) from smartBoard";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				ref = rs.getInt(1) + 1;
			}
			
			String sql2 = "insert into smartBoard values(smartBoard_seq.nextval,?,?,?,?,sysdate,?,?,?,0,?)";
			pstmt = conn.prepareStatement(sql2);
				pstmt.setString(1, bBean.getWriter());
				pstmt.setString(2, bBean.getEmail());
				pstmt.setString(3, bBean.getSubject());
				pstmt.setString(4, bBean.getPassword());
				pstmt.setInt(5, ref); 
				pstmt.setInt(6, re_step); 
				pstmt.setInt(7, re_level); 
				pstmt.setString(8, bBean.getContent());
			pstmt.executeUpdate();	
					
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try { if(rs != null) rs.close(); } catch (SQLException e) {}
			try { if(pstmt != null) pstmt.close(); } catch (SQLException e) {}
			try { if(conn != null) conn.close(); } catch (SQLException e) {}
		}
	}
	
	// selectBoard() : 모든 게시판 정보를 조회
		public Vector<boardBean> selectBoard() {
			Vector<boardBean> v = new Vector<>();
			
			try {
				getConnection();
				
				String sql = "select * from smartBoard order by ref desc, re_step asc, num desc";
				
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					boardBean bBean = new boardBean();
					
					bBean.setNum(rs.getInt("num"));
					bBean.setWriter(rs.getString("writer"));
					bBean.setEmail(rs.getString("email"));
					bBean.setSubject(rs.getString("subject"));
					bBean.setPassword(rs.getString("password"));
					bBean.setReg_date(rs.getString("reg_date").toString());
					bBean.setRef(rs.getInt("ref"));
					bBean.setRe_step(rs.getInt("re_step"));
					bBean.setRe_level(rs.getInt("re_level"));
					bBean.setReadCount(rs.getInt("readcount"));
					bBean.setContent(rs.getString("content"));
					
					v.add(bBean); // 벡터에서 mBean의 내용을 참조하도록 설정
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
}
