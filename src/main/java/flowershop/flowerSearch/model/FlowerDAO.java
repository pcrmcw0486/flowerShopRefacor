package flowershop.flowerSearch.model;

import flowershop.flowerSearch.database.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class FlowerDAO {
	
	private static FlowerDAO instance = new FlowerDAO();
	private FlowerDAO(){
	}
	public static FlowerDAO getInstnace() {
		return  instance;
	}

	//꽃 이름으로 검색
	// 계절 색깔 선택해서 검색하는 부분 + 꽃 이름 typing
	public ArrayList<FlowerDTO> serachByOptions(String req_name, String[] req_seasons, String[] req_colors){
		Connection conn = null;
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		int check = 0 ;
		
		String sql = "";
		String color_sql = "";
		String season_sql = "";

		//받아온 파라미터 값 전처리
		String search_name="";
		if(req_name != null)
			search_name=req_name;
		
		String[] seasons = req_seasons;
		if(seasons != null) {
			season_sql = "and (";
			for(String season : seasons) {
				if(check > 0)
					season_sql += " or ";
				season_sql += "s.s_id = " + season;
				check++;
			}
			season_sql += ") ";
		}
		check = 0 ;
		String[] colors = req_colors;
		if(colors!= null) {
			color_sql = "and (";
			for(String color : colors) {
				if(check > 0 )
					color_sql += " or ";
				color_sql += "c.color_id = " + color;
				check++;
			}
			color_sql += ")";
		}
		
		sql = "select distinct f.fname, fd.f_id, c.color_name, fd.f_lang, fd.image_url  from f_detail fd "
				+"left join colors c on fd.flower_color = c.color_id left join flower f on fd.f_id = f.f_id "+
				"left join season s on s.f_id = fd.f_id left join seasons ss on s.s_id = ss.s_id "+
				"where f.fname like '%" + search_name + "%' " + season_sql + color_sql;
		//sql문 생성
		System.out.println(sql);
		ArrayList<FlowerDTO> listOfFlowers = new ArrayList<FlowerDTO>();
		System.out.println("----------------");
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			//pstmt = conn.prepareStatement(sql2);
			//rs = pstmt.executeQuery();
			rs = stmt.executeQuery(sql);
			if(conn == null)
				System.out.println("connection null");
			
		
			//System.out.println("FNAME : " + rs.getString("FNAME"));
			while(rs.next()) {
				FlowerDTO flower = new FlowerDTO();
				flower.setFname(rs.getString("FNAME"));
				System.out.println("name:" + flower.getFname());
				
				flower.setImage_Path(rs.getString("IMAGE_URL"));
				System.out.println("Path:" + flower.getImage_Path());
				
				flower.setDescription(rs.getString("F_LANG"));
				System.out.println("꽃말:" +flower.getDescription());
				//flower.setColor(rs.getInt("FLOWER_COLOR"));
				//System.out.println("color:" + flower.getColor());
				
				listOfFlowers.add(flower);
			}
			return listOfFlowers;
		} catch(Exception e) {
			System.out.println("searchByOptions()  : " + e);
		}finally {
			try {
				if( rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}
		}
		return null;
	}
	
	//꽃말로 검색
	//직접 typing한거.
	public ArrayList<FlowerDTO> serachByFlang(String req_flang){
		Connection conn = null;
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "";
		String search_flang = "";
		ArrayList<FlowerDTO> listOfFlowers = new ArrayList<FlowerDTO>();

		if(req_flang != null)
			search_flang = req_flang;
		System.out.println("input req flang : " + req_flang);
		System.out.println("output search_lang : " + search_flang);
		//sql문 생성하고

		sql = "select * from f_detail fd left join flower f on fd.f_id = f.f_id "+
		" where fd.f_lang like '%"+ search_flang + "%'";
		//연결 및 query문 실행
		System.out.println(sql);
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				FlowerDTO flower = new FlowerDTO();
				flower.setFname(rs.getString("FNAME"));
				System.out.println("name:" + flower.getFname());

				flower.setImage_Path(rs.getString("IMAGE_URL"));
				System.out.println("Path:" + flower.getImage_Path());

				flower.setDescription(rs.getString("F_LANG"));
				System.out.println("꽃말:" +flower.getDescription());

				listOfFlowers.add(flower);
			}
			return listOfFlowers;
		} catch(Exception e) {
			System.out.println("searchByFlang()  : " + e);
		}finally {
			try {
				if( rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}

		}
		
		return null;
	}
	
	//조건 검색
	//꽃말 keyword
	public ArrayList<FlowerDTO> serachByKeyword(String[] req_keyword){
		Connection conn = null;
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "";
		ArrayList<FlowerDTO> listOfFlowers = new ArrayList<FlowerDTO>();
		String sub_sql = "";
		int check = 0 ;
		if(req_keyword != null) {
			sub_sql += " and (";
			for(String val : req_keyword) {
				if(check > 0)
					sub_sql += " or ";
				sub_sql += "ct.keyword_id = " + val;
				check++;
			}
			sub_sql += ")";
		}

		sql = "select distinct * from f_detail fd left join flower f on fd.f_id = f.f_id,"+
		      " categorized ct where f.f_id = ct.f_id" + sub_sql;
		System.out.println(sql);
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				FlowerDTO flower = new FlowerDTO();
				flower.setFname(rs.getString("FNAME"));
				System.out.println("name:" + flower.getFname());

				flower.setImage_Path(rs.getString("IMAGE_URL"));
				System.out.println("Path:" + flower.getImage_Path());

				flower.setDescription(rs.getString("F_LANG"));
				System.out.println("꽃말:" +flower.getDescription());
				listOfFlowers.add(flower);
			}
			return listOfFlowers;
		} catch(Exception e) {
			System.out.println("searchByFlang()  : " + e);
		}finally {
			try {
				if( rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}

		}
		return null;
	}
}
