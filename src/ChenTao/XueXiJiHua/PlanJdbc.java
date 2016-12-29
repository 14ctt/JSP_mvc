package ChenTao.XueXiJiHua;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class PlanJdbc {
	private Connection con;
	private Statement st;
	private PreparedStatement ps;
	private ResultSet rs;

	public PlanJdbc() {
		
	}
	
	public Connection getConnection(){
		String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String con = "jdbc:sqlserver://localhost:1433;DatabaseName=xs";
		String user = "sa";
		String password = "";
		try {
			Class.forName(driverName);
			return DriverManager.getConnection(con,user,password);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	

	public Connection getCon() {
		return con;
	}

	public void setCon(Connection con) {
		this.con = con;
	}

	public Statement getSt() {
		return st;
	}

	public void setSt(Statement st) {
		this.st = st;
	}

	public PreparedStatement getPs() {
		return ps;
	}

	public void setPs(PreparedStatement ps) {
		this.ps = ps;
	}

	public ResultSet getRs() {
		return rs;
	}

	public void setRs(ResultSet rs) {
		this.rs = rs;
	}
	
	
	

}
