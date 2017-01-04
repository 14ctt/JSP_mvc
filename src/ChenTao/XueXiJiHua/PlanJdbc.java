package ChenTao.XueXiJiHua;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PlanJdbc {
	private Connection con;
	private Statement st;
	private PreparedStatement ps;
	private ResultSet rs;
	private List<Plan> list;
	private Plan plan;

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
	
	public boolean update(Plan plan){
		boolean flag = false;
		
		String sql = "update plans set planName = ? , plancontent = ? where id=? ";
		
		con = getConnection();
		try {
			
			ps = con.prepareStatement(sql);
			
			ps.setString(1, plan.getPlanName());
			ps.setString(2, plan.getPlancontent());
			ps.setInt(3, plan.getId());
			
			int tf=ps.executeUpdate();
			ps.close();
			con.close();
			if(tf>0){
				flag =true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	}
	
	public boolean insert(Plan plan){
		boolean flag = false;
		con = getConnection();
		String sql = "insert into plans values(?,?,?)";
		
		try {
			
			ps = con.prepareStatement(sql);
			
			ps.setString(1, plan.getPlanName());
			ps.setString(2, plan.getPlancontent());
			ps.setInt(3, plan.getUserid());
			
			int tf = ps.executeUpdate();
			ps.close();
			con.close();
			if(tf>0){
				flag = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	}
	
	public boolean delete(int id){
		boolean flag = false;
		con = getConnection();
		String sql = "delete from plans where id = ?";
		
		try {
			
			ps = con.prepareStatement(sql);
			
			ps.setInt(1,id);
			
			int tf = ps.executeUpdate();
			if(tf>0){
				flag = true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return flag;
	}
	
	/**
	 * 查询计划标题
	 * @param userid
	 * @return
	 */
//	public List<String> findTitle(int userid){
//		List<String> ll = new ArrayList<String>();
//		
//		con = getConnection();
//		String sql ="select * from plans where userid = ?";
//		
//		try {
//			
//			ps = con.prepareStatement(sql);
//			
//			ps.setInt(1, userid);
//			
//			rs = ps.executeQuery();
//			
//			while(rs.next()){
//				
//				String planTitle = rs.getString("planName");
//				
//				ll.add(planTitle);
//			}
//			
//			rs.close();
//			ps.close();
//			con.close();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		return ll;
//		
//	
//	}
	
	/**
	 * 查询单个计划
	 * @param userid
	 * @return
	 */
	public List<Plan> findOne(int userid,int id){
		
		con = getConnection();
		String sql ="select * from plans where userid = ? and id = ?";
		
		try {
			
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, userid);
			ps.setInt(2, id);
			
			rs = ps.executeQuery();
			
			list = new ArrayList<Plan>();
			
			while(rs.next()){
				
				plan = new Plan();
				
				plan.setPlanName(rs.getString("planName"));
				plan.setPlancontent(rs.getString("plancontent"));
				plan.setId(rs.getInt("id"));
				plan.setUserid(rs.getInt("userid"));
				
				list.add(plan);
			}
			
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	//查询所有计划
	public List<Plan> findAll(int userid){
		
		con = getConnection();
		String sql ="select * from plans where userid = ?";
		
		try {
			
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, userid);
			
			rs = ps.executeQuery();
			
			list = new ArrayList<Plan>();
			while(rs.next()){
				
				plan = new Plan();
				
				plan.setPlanName(rs.getString("planName"));
				plan.setPlancontent(rs.getString("plancontent"));
				plan.setUserid(rs.getInt("userid"));
				plan.setId(rs.getInt("id"));
				
				list.add(plan);
			}
			
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
	}

	
	
	public static void main(String[] args){
		Plan plan = new Plan();
		plan.setPlanName("这是标题");
		plan.setPlancontent("这是内容");
		plan.setUserid(3);
		PlanJdbc obj = new PlanJdbc();
		obj .insert(plan);
		
	}
	

}
