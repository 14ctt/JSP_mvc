package ChenTao.XueXiJiHua;

public class Plan {
	private String plancontent;// 学习计划内容
	private int userid;// 用户id
	private String planName;//计划标题
	private int id;

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPlanName() {
		return planName;
	}

	public void setPlanName(String planName) {
		this.planName = planName;
	}

	

	public String getPlancontent() {
		return plancontent;
	}

	public void setPlancontent(String plancontent) {
		this.plancontent = plancontent;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

}
