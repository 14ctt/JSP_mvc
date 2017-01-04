<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page
	import="java.util.ArrayList,java.util.List,ChenTao.XueXiJiHua.PlanJdbc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>显示计划标题</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
	%>
	<jsp:useBean id="user" class="ChenTao.XueXiJiHua.PlanJdbc" />
	<table>
		<%
			session.setAttribute("userid", 1);
			int i = 1;
		%>

		<c:forEach var="rs" items="${ user.findAll(1)}">
			<tr>
				<td><%out.print(i++); %></td>
				<td><c:out value="${rs.getPlanName()}" /></td>
				<td>
				
					<form action="/JSP_mvc/planservlet" method="post">
						<input name="id" style="display:none;" value="${rs.getId() }"/>
						<input name="userid" style="display:none;"  value="${rs.getUserid()}"/>
						<input name="flag" style="display:none;"  value="插入查询"/>
						<button>查看计划</button>
					</form>
					
				</td>
				
				<td>	
							
					<a href="update.jsp?id=<c:out value="${rs.getId() }"/>&userid=<c:out value="${rs.getUserid() }"/>"><button>修改计划</button></a>				
				
				</td>
				
				<td>
					<form action="/JSP_mvc/planservlet" method="post">
						<input name="id" style="display:none;" value="${rs.getId() }"/>
						<input name="userid" style="display:none;"  value="${rs.getUserid()}"/>
						<input name= "planName" value="${rs.getPlanName()}" style="display:none;"/>
						<input name="flag" style="display:none;"  value="删除"/>
						<button type="submit">删除</button>
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	${sessionScope.userid}
</body>
</html>