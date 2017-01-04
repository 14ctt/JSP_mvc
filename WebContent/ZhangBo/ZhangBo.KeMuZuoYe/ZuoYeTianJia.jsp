<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ page import="java.sql.*,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>填写信息</title>
</head>
<body>
<form action="/JSP_mvc/workervlet" method="post">
<p>科目名称：<input name="kemuname"></p>
<p>作业标题：<input name="zuoyename"></p>
<p>作业内容：<input name="zuoyenr"></p>
<p>上传时间：<input name="times"></p>
<p>科目ID：<input name="kemuid"></p>
<p>用户ID：<input name="userid"></p>
<button type="submit">提交信息</button>
</form>
</body>
</html>