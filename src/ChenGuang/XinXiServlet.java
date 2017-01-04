package ChenGuang;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class XinXiServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		int userid = (int)(request.getSession().getAttribute("userid"));
		String tiao = request.getParameter("tiao");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String major = request.getParameter("major");
		String phone = request.getParameter("phone");
		String sex = request.getParameter("sex");
        
		GeRenXinXi xinxi = new GeRenXinXi();
		xinxi.setUserid(userid);
		xinxi.setUsername(username);
		xinxi.setPassword(password);
		xinxi.setEmail(email);
		xinxi.setMajor(major);
		xinxi.setPhone(phone);
		xinxi.setSex(sex);
		
		XinXiJdbc xinxiJdbc = new XinXiJdbc();
		
		boolean pan = false;
		
		if(tiao.equals("×¢²á")){
			pan = xinxiJdbc.insert(xinxi);
			if(pan){
				request.setAttribute("pan", "×¢²á³É¹¦£¡");
			}else{
				request.setAttribute("pan", "×¢²áÊ§°Ü£¡");
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}
}
