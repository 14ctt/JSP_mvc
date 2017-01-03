<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ page import = "java.util.ArrayList,java.util.List,ChenTao.XueXiJiHua.PlanJdbc,ChenTao.XueXiJiHua.Plan" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改页面</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
response.setContentType("text/html");
%>
<jsp:useBean id="user" class="ChenTao.XueXiJiHua.PlanJdbc"/>

<form action="/JSP_mvc/planservlet" method="post">

<input name="flag" style="display: none;" value="更新"/>
<%
int userid = (int)session.getAttribute("userid");
String planName = request.getParameter("planName");
List<Plan> ll= user.findOne(userid, planName);
Plan plan = ll.get(0);
%>


<input name = "planName" value="<%=planName%>"/>
<textarea rows="50" cols="100" name= "plancontent"><%=plan.getPlancontent()%></textarea>
<button type="submit">保存</button>


  
 </form>
</body>
</html>