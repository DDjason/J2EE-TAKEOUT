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
	window.location.href ="../regist.jsp";
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
	if(xmlhttp.readyState == 4){
		if(xmlhttp.status == 200){
			alert("执行成功");
			document.getElementById("toolTip").innerHTML=xmlhttp.responseText;
			if(xmlhttp.responseText = '登录成功!')
			{
				
			 window.location.href="../Main.jsp"; 
			 }
			//document.getElementByld("toolTip").style.display="block";
		}else{
			alert("你所请求的页面有错误!");
		}
	}
}