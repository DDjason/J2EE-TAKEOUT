function load1(){
	
	window.location="Load.jsp";

}
function load2(){
	
	window.location="regist.jsp";

}

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
function whatup(){
	//alert("fuck!");
	//var time = new new Date().getTime();
	regist.usename.value = "";
	regist.password.value = "";
	regist.checkpassword.value= "";
	regist.name.value = "";
	regist.address.value = "";
	regist.info.value = "";
	regist.telphone.value= "";
}

function GetResult(){
	if(xmlhttp.readyState == 4){
		if(xmlhttp.status == 200){
			alert("执行成功");
			
			var t= xmlhttp.responseText;
			alert(t);
			if(t != null)
			{
				alert("跳转到主页面！");
				window.location.href="Main.jsp?useid="+t;
			}
			else{alert("添加顾客信息失败！");}
		}else{
			alert("你所请求的页面有错误!");
		}
	}
}
