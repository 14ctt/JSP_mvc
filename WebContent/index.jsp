<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
   #top ul li:HOVER {
	border-top: 4px solid #FF9900;
	background: #343434;}
	#daohang{
	 margin:auto;
	 width:1000px;
	 height: 33px;
	 background: #343434;
	position: relative;
	}
	#top ul li ul{display: none;}
	#top ul li:HOVER ul{
	
	display:block;
	position: absolute;
	top:30px;
    } 

    #top ul li:HOVER ul li:HOVER{
	
	display:block;
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
</style>
</head>
<body>
     <div id="love">
     <div id="top">
     
        <ul id="u1">
        
          <li>首页</li>&nbsp;
          <li>个人信息
          <ul>
          <li>信息查看</li><div id="dv1"></div>
          <li>删除信息</li><div id="dv1"></div>
          <li>修改或添加信息</li>
          </ul>
          </li>&nbsp;
          
          <li>科目作业
          <ul>
          <li href="#">JavaScrip</li><div id="dv1"></div>
          <li>Android</li><div id="dv1"></div>
          <li>JSP</li><div id="dv1"></div>
          <li>数据结构</li><div id="dv1"></div>
          <li>面向对象</li><div id="dv1"></div>
         </ul>
          
          </li>&nbsp;
          <li>学习计划
          <ul>
          <li>我的学习计划</li><div id="dv1"></div>
          <li>增加新的计划</li><div id="dv1"></div>
          <li>修改学习计划</li><div id="dv1"></div>
          <li>过期计划</li><div id="dv1"></div>        
          </ul>         
          </li>&nbsp;
          
          <li>科目重点
          <ul>
          <li>我的学习重点</li><div id="dv1"></div>
          <li>添加学习重点</li><div id="dv1"></div>
          <li>修改学习重点</li><div id="dv1"></div>    
          </ul>
                   
          </li>&nbsp;
          <li>音乐管理
          <ul>
          <li>我的音乐</li><div id="dv1"></div>
          <li>上传音乐</li><div id="dv1"></div>     
          </ul>
                
          </li>
        </ul>     
     </div>
     <div id="daohang">
     <input type="text" value="搜索">
     <button type="button" class="btn btn-primary btn-sm">Small button</button>
      </div>
      <div id="info">
      
      
      
      </div>
      
      
     </div>
     
     <img src="img/musicBtn.png" class="musicbtn" onclick="playPause(this)"/>
	<audio src="mp3/mp3.mp3" autoplay="autoplay" id="musicPlayer"></audio>
</body>
</html>