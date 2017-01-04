package ChenGuang;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class XinXiJdbc {

	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private ArrayList<GeRenXinXi> list;
	private GeRenXinXi xinxi;

	public XinXiJdbc() {

	}

	public Connection getConnection() {
		String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String con = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
		String user = "sa";
		String password = "";
		try {
			Class.forName(driverName);
			return DriverManager.getConnection(con, user, password);

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean insert(GeRenXinXi xinxi) {
		boolean pan = false;
		con = getConnection();
		String sql = "insert into plans values(?,?,?,?,?,?,?)";

		try {

			ps = con.prepareStatement(sql);

			ps.setInt(1, xinxi.getUserid());
			ps.setString(2, xinxi.getUsername());
			ps.setString(3, xinxi.getPassword());
			ps.setString(4, xinxi.getEmail());
			ps.setString(5, xinxi.getMajor());
			ps.setString(6, xinxi.getPhone());
			ps.setString(7, xinxi.getSex());

			int up = ps.executeUpdate();
			ps.close();
			con.close();
			if (up > 0) {
				pan = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return pan;
	}

	public List<GeRenXinXi> select(int userid) {

		con = getConnection();
		String sql = "select * from plans where userid = ?";

		try {

			ps = con.prepareStatement(sql);

			ps.setInt(1, userid);

			rs = ps.executeQuery();

			list = new ArrayList<GeRenXinXi>();
			while (rs.next()) {

				xinxi = new GeRenXinXi();

				xinxi.setUsername(rs.getString("username"));
				xinxi.setPassword(rs.getString("password"));
				xinxi.setEmail(rs.getString("email"));
				xinxi.setMajor(rs.getString("major"));
				xinxi.setPhone(rs.getString("phone"));
				xinxi.setSex(rs.getString("sex"));

				list.add(xinxi);
			}

			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;

	}

	public boolean update(GeRenXinXi xinxi) {
		boolean pan = false;

		String sql = "update plans set username = ? password = ? email = ? major = ? "
				+ "phone = ? sex = ? where userid = ? ";

		con = getConnection();
		try {

			ps = con.prepareStatement(sql);

			ps.setInt(1, xinxi.getUserid());
			ps.setString(2, xinxi.getUsername());
			ps.setString(3, xinxi.getPassword());
			ps.setString(4, xinxi.getEmail());
			ps.setString(5, xinxi.getMajor());
			ps.setString(6, xinxi.getPhone());
			ps.setString(7, xinxi.getSex());

			int up = ps.executeUpdate();
			ps.close();
			con.close();
			if (up > 0) {
				pan = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return pan;
	}

	public boolean delete(int userid) {
		boolean pan = false;
		con = getConnection();
		String sql = "delete from plans where userid = ?";

		try {

			ps = con.prepareStatement(sql);

			ps.setInt(1, userid);

			int up = ps.executeUpdate();
			ps.close();
			con.close();
			if (up > 0) {
				pan = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return pan;
	}

}
