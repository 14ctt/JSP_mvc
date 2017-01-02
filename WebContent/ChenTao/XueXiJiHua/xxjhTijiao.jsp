<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学习计划提交页面</title>
</head>
<body>
<form action="/JSP_mvc/planservlet" method="post">
<%session.setAttribute("userid", 1); %>
<input name="flag" style="display: none;" value="添加"/>
<input name = "planName" type="text"/>
<textarea name="plancontent" rows="50" cols="100"></textarea>
<button type="submit">保存</button>
</form>
<a href="showPlanTitle.jsp">ds</a>
</body>
</html>