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
					bBean.setReg_date(rs.getString("reg_date").toString().substring(0,10));
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
		
		// oneSelectMember(num)
		public boardBean oneSelectMember(int num) {
			
			boardBean bBean = new boardBean();
			try {
				getConnection();
				
				String readSql = "update smartBoard set readCount = readCount+1 where num=?";
				pstmt = conn.prepareStatement(readSql);
					pstmt.setInt(1, num);
				pstmt.executeUpdate();
				
				String sql = "select * from smartBoard where num=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					
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
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try { if(rs != null) rs.close(); } catch (SQLException e) {}
				try { if(pstmt != null) pstmt.close(); } catch (SQLException e) {}
				try { if(conn != null) conn.close(); } catch (SQLException e) {}
			}
			
			return bBean;
		}
		
		// rewriteBoard 댓글 쓰기 구현
		public void rewriteBoard(boardBean bBean) {
			
			try {
				getConnection();
				
				int ref = bBean.getRef();
				int re_step = bBean.getRe_step();
				int re_level = bBean.getRe_level();
				
				//기존 참조한 글보다 더 큰 값을 줍니다. re_level을 1 증가 시킵니다.
				String sql = "update smartboard set re_level = re_level + 1 where ref=? and re_level > ?";
				pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, ref);
					pstmt.setInt(2, re_level);
				pstmt.executeUpdate();
				
				String sql2 = "insert into smartboard values(smartBoard_seq.nextval,?,?,?,?,sysdate,?,?,?,0,?)";
				pstmt = conn.prepareStatement(sql2);
					pstmt.setString(1, bBean.getWriter());
					pstmt.setString(2, bBean.getEmail());
					pstmt.setString(3, "[Reply]: >" + bBean.getSubject());
					pstmt.setString(4, bBean.getPassword());
					pstmt.setInt(5, ref); 
					pstmt.setInt(6, re_step + 1); 
					pstmt.setInt(7, re_level + 1); 
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
		
		// updateBoard 수ㅔ시글 수정
		public void updateBoard(boardBean bBean) {
			try {
				getConnection();
				
				String sql = "update smartboard set email=?, subject=?, content=? where num=?";
				pstmt = conn.prepareStatement(sql);
					pstmt.setString(1,bBean.getEmail());
					pstmt.setString(2,bBean.getSubject());
					pstmt.setString(3,bBean.getContent());
					pstmt.setInt(4, bBean.getNum());
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try { if(rs != null) rs.close(); } catch (SQLException e) {}
				try { if(pstmt != null) pstmt.close(); } catch (SQLException e) {}
				try { if(conn != null) conn.close(); } catch (SQLException e) {}
			}
		}
		
		public void deleteBoard(int num) {
			try {
				getConnection();
				
				String sql = "delete from smartBoard where num =?";
				pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, num);
				pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try { if(rs != null) rs.close(); } catch (SQLException e) {}
				try { if(pstmt != null) pstmt.close(); } catch (SQLException e) {}
				try { if(conn != null) conn.close(); } catch (SQLException e) {}
			}
		}
		
		// 게시물의 비밀번호 얻어오기
		public String getPassword(int num) {
			String password = null;
			try {
				getConnection();
				
				String sql = "select password from smartboard where num =?";
				pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, num);
					
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
		
}
