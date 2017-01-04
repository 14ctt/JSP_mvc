package ZhangBo.KeMu;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import ChenTao.XueXiJiHua.Plan;

public class workJdbc {
	private Connection conn;
	private Statement stmt;
	private ResultSet rs;
	private List<work> list;
	private PreparedStatement ps;
	public workJdbc(){
		
	}
	public Connection getConnection(){
		String driverName="com.mysql.jdbc.Driver";
		String connectSQL = "jdbc:mysql://localhost:3306/xs";
		
		try {
			Class.forName(driverName);
			return DriverManager.getConnection(connectSQL,"root","1234");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}		 		
	}
        //查询作业
	public List<work> select(){
		conn = getConnection();
		String sql="select * from zuoye";
		 try {
			ps = conn.prepareStatement(sql);			
			rs = ps.executeQuery();
			list = new ArrayList<work>();
			 while(rs.next())
			  {
				 work w = new work();
				 w.setKemuname(rs.getString("kemuname"));
				 w.setZuoyename(rs.getString("zuoyename"));
				 w.setTimes(rs.getString("times"));
				 list.add(w);
			  }
			  
			  //关闭连接
			  rs.close();
			  ps.close();
			  conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return list;	
	}
	//作业的删除
	public List<work> delete(int kemuname){
		conn = getConnection();
		String sql="delete from work where kemuname = ?";
		 try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1,kemuname);
			rs = ps.executeQuery();

			  rs.close();
			  ps.close();
			  conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return list;	
	}
	
	//添加
	public boolean insert(work wor){
		boolean flag = false;
		conn = getConnection();
		String sql = "INSERT INTO zuoye(kemuname,zuoyename,zuoyenr,times,kemuid,userid) VALUES(?,?,?,?,?,?)";
		
		try {
			
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, wor.getKemuname());
			ps.setString(2, wor.getZuoyename());
			ps.setString(3, wor.getZuoyenr());
			ps.setString(4, wor.getTimes());
			ps.setString(5, wor.getKemuid());
			ps.setString(6, wor.getUserid());
			
			int tf = ps.executeUpdate();
			ps.close();
			conn.close();
			if(tf>0){
				flag = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return flag;
	}
}
