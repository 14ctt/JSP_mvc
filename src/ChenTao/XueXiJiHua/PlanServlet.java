package ChenTao.XueXiJiHua;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PlanServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PlanServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String flag = request.getParameter("flag");
		String planName = request.getParameter("planName");
		String plancontent = request.getParameter("plancontent");
		int userid = (int)(request.getSession().getAttribute("userid"));
		
		Plan plan = new Plan();
		plan.setPlanName(planName);
		plan.setPlancontent(plancontent);
		plan.setUserid(userid);
		
		PlanJdbc planJdbc = new PlanJdbc();
		
		boolean panduan = false;
		
		if(flag.equals("添加")){
			panduan = planJdbc.insert(plan);
			if(panduan){
				request.setAttribute("panduan", "添加成功！");
			}else{
				request.setAttribute("panduan", "添加失败！");
			}
		}
		else if(flag.equals("更新")){
			panduan = planJdbc.update(plan);
			if(panduan){
				request.setAttribute("panduan", "更新成功！");
			}else{
				request.setAttribute("panduan", "更新失败！");
			}
		}else if(flag.equals("删除")){
			panduan = planJdbc.delete(userid);
			if(panduan){
				request.setAttribute("panduan", "删除成功！");
			}else{
				request.setAttribute("panduan", "删除失败！");
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("showPlanAll.jsp");
		rd.forward(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
