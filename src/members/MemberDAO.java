package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {
	private String url = "jdbc:oracle:thin:@192.168.0.74:1521:xe";
	private String user = "jsp", pwd = "1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;

	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<MemberDTO> memberView() {
		String sql = "select * from members";
		ArrayList<MemberDTO> members = new ArrayList<MemberDTO>();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				MemberDTO m = new MemberDTO();
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setName(rs.getString("name"));
				m.setAddr(rs.getString("addr"));
				m.setTel(rs.getString("tel"));
				members.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return members;
	}

	public int loginChk(String id, String pw) {
		String sql = "select id,pwd from members where id='" + id + "'";
		int cnt = 0;
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();

			if (!rs.next()) {
				cnt = -1;
			} else {
				if (rs.getString("pwd").equals(pw)) {
					cnt = 0;
				} else {
					cnt = 1;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	public MemberDTO userInfo(String id) {
		String sql = "select * from members where id='" + id + "'";
		MemberDTO member = new MemberDTO();
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				member.setId(rs.getString("id"));
				member.setPwd(rs.getString("pwd"));
				member.setName(rs.getString("name"));
				member.setAddr(rs.getString("addr"));
				member.setTel(rs.getString("tel"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return member;
	}

	public boolean registerUser(MemberDTO member) {
		String sql = "select id from members where id='" + member.getId() + "'";
		String sql2 = "insert into members values(?,?,?,?,?)";

		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			PreparedStatement ps2 = con.prepareStatement(sql2);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				return false;
			} else {
				ps2.setString(1, member.getId());
				ps2.setString(2, member.getPwd());
				ps2.setString(3, member.getName());
				ps2.setString(4, member.getAddr());
				ps2.setString(5, member.getTel());
				ps2.executeUpdate();
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public void updateMemeber(MemberDTO member) {
		String sql = "update members set name='" + member.getName() + "', addr='" + member.getAddr() + "', tel='"
				+ member.getTel() + "' where id='" + member.getId() + "'";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void deleteMember(String id) {
		String sql = "delete from members where id='" + id + "'";
		try {
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(sql);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
