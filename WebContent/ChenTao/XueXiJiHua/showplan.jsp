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
<title>显示单个计划</title>
</head>
<body>
	<c:forEach var="rs" items="${requestScope.findOne }">
		<div style="border:1px dashed #dfjkd; width:200px;">
			<c:out value="${rs.getPlanName() }" />
		</div>
		<div style="border:1px dashed #dfjkd;">
			<c:out value="${rs.getPlancontent() }"></c:out>
		</div>
	</c:forEach>
</body>
</html>