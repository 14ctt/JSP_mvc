<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ page import = "java.util.ArrayList,java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript">
function playPause(image){
	//播放或暂停播放器
	//判断是什么状态
	//找到audio元素
	var player=document.getElementById("musicPlayer");
	//判断是否处于暂停状态
	if (player.paused) {
		//播放音乐
		player.play();
		image.src = "img/musicBtn.png"
	} else{
		player.pause();
		image.src = "img/musicBtnOff.png"
		
		
	}
}
window.onload=function(){ 
    document.getElementById('btnn').onclick = function(){       	
        var obj = document.getElementById("denglu"); 
  
        if(obj.style.display == "none"){ 
                            
            obj.style.display = "block"; 
  
        }      
        }         
    }

</script>
<!-- 最新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="bootstrap-3.3.0-dist/dist/css/bootstrap.min.css">

<style type="text/css">
   *{margin="0px";padding="0px"} 
   body{background: #CDCDCD;}
   #top{
   margin:auto;
   width:1000px;
   height:150px;
   background:url("img/21.jpg") ;
   background-size:1000px 150px;
   position: relative;
   z-index: 99;
   }
   #u1{position: absolute; bottom:-12px;}
   ul li{
     list-style: none;
     display: inline;  
     font-size: 15px;
	 text-align: center; 
	 color: white;	
	 padding: 5px;
   }
   #top #dv2:HOVER {
	border-top: 4px solid #FF9900;
	background: #343434;}
	#daohang{
	 margin:auto;
	 width:1000px;
	 height: 33px;
	 background: #343434;
	 position: relative;
	 color: #44cef6;
	 height-line:33px;
	}
	#top ul li ul{display: none;}
	#top ul li:HOVER ul{	
	display:block;
	position: absolute;
	top:25px;
    } 
   
    #top ul li:HOVER ul li a:HOVER{		
	color: white;
    } 
    
    #dv1{
         border-left:2px solid #FF02FE;
         display:inline;
         height:5px;
         width: 2px;
         
    }
     input {
 	 color: #CDCDCD;
 	 position: absolute;
	 top:4px; 
 	 right: 200px; 
 	} 
 	button {
 	button-radius:10px;
	position: absolute;
	top:2px; 
 	right: 100px;
}
body{margin:30px auto;background:url("img/2.gif") repeat;}
 #info{
   background:#9A9A9A;
   width:1000px;
   height: 500px;
   
   margin:auto;
 
 }
 
.musicbtn{
	position: fixed;
	right: 20px;
	top: 20px;
	width: 40px;
	height: 40px;

	animation: xuanzhuan 2s infinite;
}
@keyframes xuanzhuan{
	from{
		
	}
	to{
		transform: rotate(360deg);
	}
}
#dvv{
  left: 280px;
}

</style>
</head>
<body>
     <div id="love">
     <div id="top">    
        <ul id="u1">       
          <li id="dv2"><a href="#">首页</a></li>&nbsp;
          <li id="dv2"><a href="#">个人信息
          <ul>
          <li><a href="#">信息查看</li></a><div id="dv1"></div>
          <li><a href="#">删除信息</li></a><div id="dv1"></div>
          <li><a href="#">修改或添加信息</li></a>
          </ul>
          </li>&nbsp;
          
          <li id="dv2"><a href="#">科目作业</a>
          <ul>
          <li><a href="ZhangBo/ZhangBo.KeMuZuoYe/KeMuZuoYe.jsp" id="btnn">作业查看</li></a><div id="dv1"></div>
          <li><a href="ZhangBo/ZhangBo.KeMuZuoYe/ZuoYeTianJia.jsp">添加作业</li></a><div id="dv1"></div>

         </ul>
          
          </li>&nbsp;
          <li id="dv2"><a href="#">学习计划</a>
          <ul>
          <li><a href="#">我的学习计划</li></a><div id="dv1"></div>
          <li><a href="#">增加新的计划</li></a><div id="dv1"></div>
          <li><a href="#">修改学习计划</li></a><div id="dv1"></div>
          <li><a href="#">过期计划</li></a><div id="dv1"></div>        
          </ul>         
          </li>&nbsp;
          
          <li id="dv2"><a href="#">科目重点</a>
          <ul>
          <li><a href="#">我的学习重点</li></a><div id="dv1"></div>
          <li><a href="#">添加学习重点</li></a><div id="dv1"></div>
          <li><a href="#">修改学习重点</li></a><div id="dv1"></div>    
          </ul>
                   
          </li>&nbsp;
          <li id="dv2"><a href="#">音乐管理</a>
          <ul id="dvv">
          
          <li><a href="#">我的音乐</li></a><div id="dv1"></div>
          <li><a href="#">上传音乐</li></a><div id="dv1"></div>     
          </ul>
                
          </li>
        </ul>     
     </div>
     <div id="daohang">
     <marquee>不要等待机会，而是创造机会~~~~</marquee>
     <input type="text" value="搜索">
     <button type="button" class="btn btn-primary btn-sm">Small button</button>
      </div>
      <div id="info">
      
        <table border="1px" width="100%"  id="denglu" >
        
           <tr height="30px" align="center"><td width="20%"><font color="red">学科科目</font></td><td width="30%"><font color="red">作业标题</font></td><td><font color="red">提交时间</font></td></tr>
           <c:forEach var = "rs" items="${requestScope.select}">
           <tr align="center">
           <td><c:out value="${rs.getKemuname()}"></c:out></td>
           <td><c:out value="${rs.getZuoyename()}"></c:out></td>
           <td><c:out value="${rs.getTimes()}"></c:out></td>
           <td><a href="#">作业详情</a></td>
           <td><a href="#">作业删除</a></td>
           </tr>
           </c:forEach>
           
          
      
   			
   					
   					
   					
   			
   			</table>
      </div>
      
      
     </div>
     
     <img src="img/musicBtn.png" class="musicbtn" onclick="playPause(this)"/>
	<audio src="mp3/mp3.mp3" autoplay="autoplay" id="musicPlayer"></audio>
</body>
</html>