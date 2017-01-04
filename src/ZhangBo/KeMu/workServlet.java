package ZhangBo.KeMu;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ChenTao.XueXiJiHua.Plan;

/**
 * Servlet implementation class workServlet
 */
@WebServlet("/workServlet")
public class workServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public workServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//response.setContentType("text/html");
		String kemuname = request.getParameter("kemuname");
		String zuoyename = request.getParameter("zuoyename");
		String zuoyenr = request.getParameter("zuoyenr");
		String times = request.getParameter("times");
		String kemuid = request.getParameter("kemuid");
		String userid = request.getParameter("userid");
		work wor=new work();
		wor.setKemuname(kemuname);
		wor.setZuoyename(zuoyename);
		wor.setZuoyenr(zuoyenr);
		wor.setTimes(times);
		wor.setKemuid(kemuid);
		wor.setUserid(userid);	
		
		workJdbc wj = new workJdbc();
		wj.insert(wor);
		request.setAttribute("select",wj.select());
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}
   
}
