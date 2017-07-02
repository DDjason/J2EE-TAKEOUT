<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {background-image: url("img/80.jpg");}

</style>
<script type = "text/javascript">
var xmlhttp;

/**
* ajax初始化
* @param url 地址：jsp网页
* @param cfunc 回调函数
*/
function loadXMLDoc(url){
	xmlhttp = false;
	
	if (window.XMLHttpRequest){
		// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else{
		// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=GetResult; // 处理函数
	xmlhttp.open("GET",url,true); // 打开
	xmlhttp.send( null ); // 发送
}

function LoadRegist(){
	alert("跳转到注册页面！");
	window.location.href ="regist.jsp";
}

 function Load(){
	 var Loadname = Loadjsp.loadname.value;
	 var Loadpassword = document.Loadjsp.loadpassword.value;
	 if(Loadname == "")
		 {
		 alert("用户名为空---请输入用户名字！");
		 Loadjsp.loadname.focus();
		 return false;
		 }else if(Loadpassword == ""){
			 alert("密码为空---请输入密码！");
			 Loadjsp.loadpassword.focus();
			 return false;
			 }
	 loadXMLDoc( "Load_base.jsp?name=" + Loadname +
	 			"&password=" + Loadpassword + "&timestamp=" + new Date().getTime());
 }
function GetResult(){
	var Loadname = Loadjsp.loadname.value;

	if(xmlhttp.readyState == 4){
		if(xmlhttp.status == 200){
			alert("执行成功");
			document.getElementById("toolTip").innerHTML=xmlhttp.responseText;
			var t= xmlhttp.responseText;
			
			if(t == 1)
			{
				window.location.href="Main.jsp?useid="+Loadname;
			} 
		}else{
			alert("你所请求的页面有错误!");
		}
	}
}</script>

<style type="text/css">

.header_loadregist{
background-color:Red;
width:100%;
height:30px;
}

body{
 background-image: url(img/body_bg.jpg);
}
#toolTip{
	coclor:red;
}

</style>
</head>
<body>
<form name = "Loadjsp" action="">

<div align="center">
<div>
用户名：<input type="text" name="loadname" value = "" />
</div>
<br>
<div>
密码 ：<input type="password" name="loadpassword" value = ""/>
</div>
<br>
<div >
<input type="button" value="登录" onclick="Load()"/>
   
<input type="button" value="注册" onclick="LoadRegist()"/>
</div>
<div id = "toolTip"> </div>
</div>
</form>
</body>
</html>