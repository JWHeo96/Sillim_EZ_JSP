package kr.co.ezen;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

// DB 연동하는 부분
public class custDAO {
	
	static String url = "jdbc:oracle:thin:@localhost:1521:xe";
	static Connection conn = null;
	static PreparedStatement pstmt;
	static ResultSet rs;
	
	
	@SuppressWarnings("unused")
	private Connection getConnection() throws ClassNotFoundException, SQLException {

		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(url, "heo", "1234");
		return conn;
	}
	
	// data Insert
	public void setInsert(custVO cvo) throws SQLException{
		
		try {
			getConnection(); // DB 연결하는 부분
			
			String sql = "insert into cust values(cust_seq.NEXTVAL, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, cvo.getCust_name());
				pstmt.setInt(2, cvo.getCust_age());
			pstmt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
			
			if(conn != null) {
				conn.close();
			}
		}
	}
	
	public void deleteCust(custVO cvo) throws ClassNotFoundException, SQLException {
		getConnection();
		
		pstmt = conn.prepareStatement("delete from cust where cust_num=?");
		pstmt.setInt(1, cvo.getCust_num());
		pstmt.executeUpdate();
	}
	
	public void updateCust(custVO cvo) throws ClassNotFoundException, SQLException {
		getConnection();
		
		pstmt = conn.prepareStatement("update cust set cust_name=?, cust_age=? where cust_num=?");
			pstmt.setString(1,cvo.getCust_name2());
			pstmt.setInt(2, cvo.getCust_age2());
			pstmt.setInt(3, cvo.getCust_num2());
		pstmt.executeUpdate();
	}
	
	public ArrayList<custVO> selectALL() throws ClassNotFoundException, SQLException {
		
		getConnection();
		
		ArrayList<custVO> infoArr = new ArrayList<custVO>();
		
		pstmt = conn.prepareStatement("select * from cust");
		rs = pstmt.executeQuery();
			
		while(rs.next()) {
			//생성자에게 데이터를 보냅니다.
			infoArr.add(new custVO(
					rs.getInt("cust_num"), 
					rs.getString("cust_name"), 
					rs.getInt("cust_age")
					));
		}
		
		return infoArr;
	}
}
