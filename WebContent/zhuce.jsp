<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>
<div class="zhuce_body">
    <div class="zhuce_kong">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>欢迎注册</h3>
       	  	  <form action="/JSP_mvc/xinxiservlet" method="post">
                <input name="userid" type="text" class="userid" placeholder="账号">
                <input name="username" type="text" class="username" placeholder="用户名">
                <input name="password" type="password" class="password" placeholder="密码">
                <input name="email" type="text" class="email" placeholder="邮箱">
                <input name="major" type="text" class="major" placeholder="专业">
                <input name="phone" type="text" class="phone" placeholder="手机">
                <input name="sex" type="text" class="sex" placeholder="性别">
                <div>
               		<input type="checkbox"><span>已阅读并同意<a href="#" target="_blank"><span class="lan">《学习计划表使用协议》</span></a></span>
                </div>
                <input name="tiao" type="submit" class="btn_zhuce" value="注册">
                
                </form>
            </div>
        	<div class="bj_right">
            	<p>使用以下账号直接登录</p>
                <a href="#" class="zhuce_qq">QQ注册</a>
                <a href="#" class="zhuce_wb">微博注册</a>
                <a href="#" class="zhuce_wx">微信注册</a>
                <p>已有账号？<a href="log.jsp">立即登录</a></p>
            
            </div>
        </div>
    </div>

</div>
</body>
</html>
</body>
</html>