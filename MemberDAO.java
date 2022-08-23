package day10;

import java.sql.*;
import java.util.ArrayList;

public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;

	public MemberDAO() {
		System.out.println("생성자 실행");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String id = "jsp", pwd = "1234";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			// 2.오라클 연결
			con = DriverManager.getConnection(url, id, pwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<MemberDTO> getList() {
		System.out.println("getList 실행");

		ArrayList<MemberDTO> list = new ArrayList<>();

		String sql = "select * from members";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				System.out.println(rs.getString("id"));
				System.out.println(rs.getString("pwd"));
				System.out.println(rs.getString("name"));
				System.out.println(rs.getString("addr"));
				System.out.println(rs.getString("tel"));
				System.out.println("--------------");

				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
