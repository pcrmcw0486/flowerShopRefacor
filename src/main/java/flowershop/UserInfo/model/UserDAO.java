package flowershop.UserInfo.model;

import javax.servlet.http.HttpServletRequest;

public class UserDAO {
	private static UserDAO instance = new UserDAO();

	private UserDAO() {
	}

	public static UserDAO getInstnace() {
		return instance;
	}

	public void SignUp(String req_id, String req_pw, String req_name, String req_phone) {
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		// insert into FLOWER(Fname, F_ID, Birth_Month) values ('�پ˸���', 0, 0);
//		// ���⼭ �ϴ� ���Խ� �Ǵ� ����� ID/PW �������� ó��
//		// �� ����Ǹ� �ϴ� DB���� ������
//
//		try {
//			conn = DBConnection.getConnection();
//			pstmt = conn.prepareStatement("insert into USER_INFO(USER_ID,PW,USER_NAME,PHONE_NUM) values (?,?,?,?)");
//			pstmt.setString(1, req_id);
//			pstmt.setString(2, req_pw);
//			pstmt.setString(3, req_name);
//			pstmt.setString(4, req_phone);
//
//			pstmt.executeUpdate();
//		} catch (Exception e) {
//			System.out.println("SignUP() : " + e);
//		} finally {
//			try {
//				if (pstmt != null)
//					pstmt.close();
//				if (conn != null)
//					conn.close();
//			} catch (Exception ex) {
//				throw new RuntimeException(ex.getMessage());
//			}
//
//		}
	}

	
	// checkvalue 100����
	// 404 ���̵� ���� X	
	// 405 ��� ���� ����

	public int loginCheck(String ID, String PW, HttpServletRequest request) {
//		Connection conn = null;
//		Statement stmt = null;
//		ResultSet rs = null;
//
//		int status = 123;
//		// ���⼭ �ϴ� ���Խ� �Ǵ� ����� ID/PW �������� ó��
//		// �� ����Ǹ� �ϴ� DB���� ������
//		String sql = "select * from USER_INFO where USER_ID = '" + ID + "' and PW = '" + PW + "'";
//		System.out.println(sql);
//		try {
//			conn = DBConnection.getConnection();
//			stmt = conn.createStatement();
//			rs = stmt.executeQuery(sql);
//			if (rs.next()) {
//				System.out.println(rs.getString("USER_NAME"));
//				request.setAttribute("USER_NAME", rs.getString("USER_NAME"));
//				status = 200;
//			} else {
//				status = 405;
//			}
//		} catch (Exception e) {
//			System.out.println("loginCheck() : " + e);
//		} finally {
//			try {
//				if (rs != null)
//					rs.close();
//				if (stmt != null)
//					stmt.close();
//				if (conn != null)
//					conn.close();
//			} catch (Exception ex) {
//				throw new RuntimeException(ex.getMessage());
//			}
//
//			return status;
//		}
		return 0;
	}
}
