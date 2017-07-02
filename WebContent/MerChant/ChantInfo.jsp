<%@ page language="java" import ="zafu.bc.OPRest" import="zafu.info.Restaurant"
import= "java.sql.ResultSet"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息</title>

<!-- CSS -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="../css/style-print.css" type="text/css" media="print" />

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="../image/x-icon" />

<style type="text/css">
input{ width:200px; height:24px; line-height:24px; border:1px solid #999; background:#ccc; margin:15px 0 0 100px; padding:4px; color:#666;}
.bkjia_com{ background:#E0FEE4; border:1px solid #093;}
</style>

<script  type="text/javascript">
var xmlhttp;

/**
* ajax初始化
* @param url 地址：jsp网页
* @param cfunc 回调函数
*/
function loadXMLDoc2(url){
	xmlhttp = false;
	
	if (window.XMLHttpRequest){
		// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else{
		// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=GetResult2; // 处理函数
	xmlhttp.open("GET",url,true); // 打开
	xmlhttp.send( null ); // 发送
}

function GetResult2(){
	if(xmlhttp.readyState == 4){
		if(xmlhttp.status == 200){
			alert("执行成功");
			document.getElementById("toolTip").innerHTML=xmlhttp.responseText;
			//document.getElementByld("toolTip").style.display="block";
		}else{
			alert("你所请求的页面有错误!");
		}
	}
}
</script>
<script type="text/javascript">
function Chan(){
	alert("ccjcjc");
	
	var aInp=document.getElementsByTagName('input');
	var i=0;
	var strarray[];
	for(i=0; i<aInp.length; i++)
	{
	strarray.push(aInp[i].value);
	}
	loadXMLDoc2("Chantupdate_infobase.jsp?useid="
		+ strarray[0] +"&useadd="
		+ strarray[5] +"&usechant="
		+ strarray[1] +"&usedes="
		+ strarray[4] +"&usepass="
		+ strarray[2] +"&usetel="
		+ strarray[6] +"&restname="
		+ strarray[3]);

}
</script>
</head>
<body>

<%
String usename=request.getParameter("useid");

 Restaurant rest= OPRest.QueryRest(usename);
 
 System.out.print(rest.GetCharge());
%>
		
<div id="wrapper">
	<h1><a href="/"><span><%=rest.GetName()%> 餐厅管理</span></a></h1>
	<p class="description"></p>

<hr class="noscreen" />

		<h2>信息完善</h2> 
		<h2>.....................................................</h2>>

			<div class="gallery">
			
			<form action="" name = "regist" id= “input”>
		<table valign = "middle" align = "center">
		<tr>
		<td><h2>用户id</h2></td><td><input type = "text" name = "" value = <%=usename %>></td>
		</tr>
		<tr>
		<td><h2>用户名</h2></td><td><input type = "text" name = "" value = <%=rest.GetCharge() %>></td>
		</tr>
		<tr>
		<td><h2>密码</h2></td><td><input type = "password" name = "" value = <%=rest.GetPass() %>></td>
		</tr>
		<tr>
		<td><h2>餐厅名</h2></td><td><input type = "text" name = "" value = <%=rest.GetName() %>></td>
		</tr>
		<tr>
		<td><h2>描述信息</h2></td><td><input type = "text" name = "" value = <%=rest.GetDesC() %>></td>
		</tr>
		<tr>
		<td><h2>地址</h2></td><td><input type = "text" name = "" value = <%=rest.GetAdd() %>></td>
		</tr>
		<tr>
		<td><h2>电话</h2></td><td><input type = "text" name = "" value = <%=rest.GetTel() %>></td>
		</tr>
		</table>
		</form>
		<div style="margin-left:auto;margin-right:2px;width:80px;">
		<button onclick="Chan()">完成提交</button>
		</div>
<script type="text/javascript">
var aInp=document.getElementsByTagName('input');
var i=0;
var sArray=[];
for(i=0; i<aInp.length; i++)
{
aInp[i].index=i;
sArray.push(aInp[i].value);
aInp[i].onfocus=function()
{
if(sArray[this.index]==aInp[this.index].value)
{
aInp[this.index].value='';
}
aInp[this.index].className='bkjia_com';
};

aInp[i].onblur=function()
{
if(aInp[this.index].value=='')
{
aInp[this.index].value=sArray[this.index];
}
aInp[this.index].className='';
};
}
</script>

			<div class="cleaner">&nbsp;</div>
			</div>

<hr class="noscreen" />

	
		
			
<hr class="noscreen" />

<div id="footer">
	<p class="left">Copyright &copy; 2016 <a href="#">da/jun/hui</a></p>
	<p class="right"> tip: 
	<a href="http://www.baidu.com" >搜索</a></p>
</div>


<ul id="menu">
	<li><a href="../Main.jsp" class="active">主页</a></li>
	
	<li><a href="#">我的信息</a></li>
	<li><a href="Menu.jsp">信息</a></li>
	<li  id="bt"><a href="#">登录/退出</a></li>
</ul>
</div>
</body>
</html>





