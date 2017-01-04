<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page
	import="java.util.ArrayList,java.util.List,ChenTao.XueXiJiHua.PlanJdbc,ChenTao.XueXiJiHua.Plan"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	<%String s=(String)request.getAttribute("panduan");
	if(s!=null||s.equals("")){
		%>
		alert("<%=s%>");
		<%
	}
	s="";
	%>
	
	
	
	
}
</script>
</head>
<body>
<a href="ChenTao/XueXiJiHua/showPlanTitle.jsp">返回</a>
	<table>
		<%int i =1; %>
		<c:forEach var="rs" items="${requestScope.findAll }">
			<tr>
			<td><%=i++ %></td>
				<td><c:out value="${rs.getPlanName() }" /></td>
				<td>
				
					<form action="/JSP_mvc/planservlet" method="post">
					
						<input name="id" style="display:none;" value="${rs.getId() }"/>
						<input name="userid" style="display:none;"  value="${rs.getUserid()}"/>
						<input name="flag" style="display:none;"  value="<%=request.getAttribute("cr")%>"/>
						<button>查看计划</button>
						
					</form>
					
				</td>
					
			</tr>
		</c:forEach>
	</table>
</body>
</html>