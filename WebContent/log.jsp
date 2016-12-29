<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
   .btn{   
	       width:420px;
		   height:200px;
		   margin:0 auto;
		   position:absolute;   /*都要定位*/
		   top:155px;
		   left:444px;     
	    }
 .btn .b_button{
 width:420px;height:50px;
 margin-top:30px;
 margin-left: 0px;
 }
	    .btn .b_button a
	    {
	        width:188px;
			height:32px;
			background:#66F;
			float:left;
			margin-right:10px;
			margin-left:10px;
			text-align:center;
			line-height:32px;
			text-decoration:none;
			color:#fff;
			font-weight:bold;
			border-radius:5px;/* 切圆角 */
	     }
		 .btn .b_button a:hover{background:#69F;} 

		 .btn .b_button .b_reg{background:none;border:1px solid #fff;}
         .btn .b_button .b_reg:hover{background:#69F;}
         body{background:url("img/33.jpg") repeat;}
</style>
<script type="text/javascript">


</script>
</head>
<body>
  <div class="btn">
     <div id="dv1"></div>
     <div id="img">
     <img alt="" src="img/23.png" width="300px" height="180px">
     
     </div>
    <div class="b_button">
      <a href="#">登录</a>
         <a href="#" class="b_reg">立即注册</a>
    </div>
  
  
  </div>
</body>
</html>