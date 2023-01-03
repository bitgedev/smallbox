package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.JdbcUtil;
import vo.CouponBean;

public class CouponDAO {
	
	PreparedStatement pstmt = null, pstmt2 = null;
	ResultSet rs = null;
	
	//----------------------------------------------------
	// 싱글톤 패턴
	private static CouponDAO instance = new CouponDAO();

	public static CouponDAO getInstance() {
		return instance;
	}

	//-----------------------------------------------------
	private Connection con;

	public void setConnection(Connection con) {
		this.con = con;
	}

	
	//-----------------------------------------------------
	// DB 작업

	// 마이페이지 - 각 회원(member_id)의 쿠폰 내역 조회
	public List<CouponBean> selectMemberCouponList(String member_id, int startRow, int couponLimit) {
		List<CouponBean> couponList = null;
		
		try {
			String sql = "SELECT * FROM coupon WHERE member_id = ? ORDER BY coupon_date DESC LIMIT ?, ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member_id);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, couponLimit);
			rs = pstmt.executeQuery();
			
			couponList = new ArrayList<CouponBean>();
			
			while(rs.next()) {
				CouponBean coupon = new CouponBean();
				coupon.setMember_id(rs.getString("member_id"));
				coupon.setCoupon_idx(rs.getInt("coupon_idx"));
				coupon.setCoupon_type(rs.getString("coupon_type"));
				coupon.setCoupon_rate(rs.getInt("coupon_rate"));
				coupon.setCoupon_date(rs.getDate("coupon_date"));
				coupon.setCoupon_end_date(rs.getDate("coupon_end_date"));
				
				couponList.add(coupon);
			}
			
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류! - selectMemberCouponList()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		
		
		return couponList;
	}

	// 마이페이지 - 회원별 쿠폰 보유갯수 조회 : 쿠폰 페이징 처리 / 마이페이지 쿠폰 갯수 뿌리기에 사용
	public int selectMemberCouponCount(String member_id) {
		int CouponCount = 0;
		
		try {
			String sql = "SELECT Count(*) FROM coupon WHERE member_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				CouponCount = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류! - selectMemberCouponCount()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		
		return CouponCount;
	}
}
