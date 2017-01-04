<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>信息查看</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
	%>
	<jsp:useBean id="user" class="ChenGuang.XinXiJdbc" />

	<form action="/JSP_mvc/xinxiservlet" method="post">
		<input name="userid" style="display: none;" value="${rs.getUserid() }" />
		<input name="username" style="display: none;"value="${rs.getUsername() }" /> 
		<input name="password" style="display: none;" value="${rs.getPassword() }" /> 
		<input name="email" style="display: none;" value="${rs.getEmail() }" /> 
		<input name="major" style="display: none;" value="${rs.getMajor() }" /> 
		<input name="phone" style="display: none;" value="${rs.getPhone() }" /> 
		<input name="sex" style="display: none;" value="${rs.getSex() }" /> 
	    <input name="tiao" type="submit" style="display: none;" value="修改信息" />
	</form>
</body>
</html>