<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ page import = "java.util.ArrayList,java.util.List,ChenTao.XueXiJiHua.PlanJdbc" %>
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
<jsp:useBean id= "user" class="ChenTao.XueXiJiHua.PlanJdbc"/>
<table>
<%session.setAttribute("userid", 1); %>

<c:forEach var = "rs" items="${ user.findTitle(1)}" >
<tr><td><c:out value="${rs }"/></td><td><a href="update.jsp?planName= <c:out value='${rs }'/> "><button>查看计划</button></a></td><td><button>修改计划</button></td><td><button>删除计划</button></td></tr>
</c:forEach>
</table>
${sessionScope.userid}
</body>
</html>