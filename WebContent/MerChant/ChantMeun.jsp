<%@ page language="java" import ="zafu.bc.OPMenu" import="zafu.info.*" import="zafu.bc.OPRest"
import= "java.sql.ResultSet"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单管理</title>

<link rel="stylesheet" href="../css/Load.css" type="text/css"  />

<!-- Javascript -->
<meta http-equiv="Content-Script-Type" content="text/javascript" />
 
<!-- CSS -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="../css/style-print.css" type="text/css" media="print" />
<style type="text/css">
table, td, th
  {
  border:1px solid green;
  }

th
  {
  background-color:green;
  color:white;
  }
  
a:link, a:visited {
color: #BBDDFF;
text-decoration: underline;
font-weight: bold;
}

a:hover {
color:#FF00FF;
text-decoration: none;
}
input{ width:100px; height:24px; line-height:24px; border:1px solid #999; background:#ccc;  padding:4px; color:#666;}
.bkjia_com{ background:#E0FEE4; border:1px solid #093;}
</style>

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="../image/x-icon" />

<script  type="text/javascript">
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

function GetResult(){
	if(xmlhttp.readyState == 4){
		if(xmlhttp.status == 200){
			//alert("执行成功");
			//document.getElementById("toolTip").innerHTML=xmlhttp.responseText;
			//document.getElementByld("toolTip").style.display="block";
		}else{
			//alert("你所请求的页面有错误!");
		}
	}
}


function DeleteMenuFun(mid){
	loadXMLDoc("MenuDelete.jsp?mid="+mid);
	location.reload(true); 
}
function Xfun(){
	alert("dsfdsf");
}
function doFun(name){
	alert(name);
	loadXMLDoc("MenuDelete.jsp?mid="+name);
	alert("MenuDelete.jsp?mid="+name);
	//location.reload(true); 
	location.reload(true); 
}
function InsertM(){
	
	var ss1=eval(document.getElementById('1')).value 
	var ss2=eval(document.getElementById('2')).value
	var ss3=eval(document.getElementById('3')).value 
	var ss4=eval(document.getElementById('4')).value 
	var ss5=eval(document.getElementById('5')).value 
	var ss6=eval(document.getElementById('6')).value
	var ss7=eval(document.getElementById('7')).value
	
	if(ss1 != "")
		{
		loadXMLDoc("AddMenu.jsp?ss1="+ss1+"&ss2="+ss2+"&ss3="+ss3+"&ss4="+ss4+"&ss5="+ss5+"&ss6="+ss6+"&ss7="+ss7);
	location.reload(true)
		}
	//alert(Loadname);
	alert("sdf");
}
</script>

</head>
<body>

<%
String usename=request.getParameter("useid");
Restaurant rest= OPRest.QueryRest(usename);
%>
<div id="wrapper">
	<h1><a href="/"><span><%=rest.GetName()%>餐厅管理</span></a></h1>
	<p class="description"></p>
<hr class="noscreen" />

		<h2>菜单删除添加</h2>
<table name="dsa">
<caption>
菜单管理
</caption>
<tr>
	<th><h3>菜单编号</h3></th>
	<th><h3>菜单名称</h3></th>
	<th><h3>菜单剩余份数</h3></th>
	<th><h3>菜单信息</h3></th>
	<th><h3>菜单价格</h3></th>
	<th><h3>菜单图片</h3></th>
	<th><h3>菜单修改</h3></th>
	<th><h3>菜单删除</h3></th>

</tr>
<%
Menu menu = new Menu(2);
ResultSet rs = OPMenu.QueryMenu(usename);
try{
	while(rs.next()){
		menu.setCanting(rs.getString("r_编号"));
		menu.SetHave(rs.getShort("m_Have"));
		menu.SetMID(rs.getString("m_编号"));
		menu.SetMimgURL(rs.getString("m_imgURL"));
		menu.SetMInf(rs.getString("m_信息"));
		menu.SetMName(rs.getString("m_菜名"));
		menu.SetMPric(rs.getDouble("m_价格"));
		%>

<tr>
<td><input type = "text" name = "yi" value = <%=menu.GetID() %>></td>
<td><input type = "text" name = "yi" value = <%=menu.GetMName() %>></td>
<td><input type = "text" name = "yi" value = <%=menu.GetHave() %>></td>
<td><input type = "text" name = "yi" value = <%=menu.GetInf()%>></td>
<td><input type = "text" name = "yi" value = <%=menu.GetMPric() %>></td>
<td><input type = "text" name = "yi" value = <%=menu.GetimgURL() %>></td>
<td><button onclick="Xfun()">更新</button></td>
<td><button onclick="doFun('<%=menu.GetID() %>')">删除</button></td>
</tr>
		

		
	<%
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
<tr>
<td><input id = "1" type = "text" name = "" value =''></td>
<td><input id = "2" type = "text" name = "" value =''></td>
<td><input id = "3" type = "text" name = "" value =''></td>
<td><input id = "4" type = "text" name = "" value =''></td>
<td><input id = "5" type = "text" name = "" value =''></td>
<td><input id = "6" type = "text" name = "" value =''></td>
<td><input id = "7" type = "text" name = "" value =<%=usename %>></td>
<td><button onclick="InsertM()">新增</button></td>
</tr>
</table>	

<hr class="noscreen" />
</div>
	
</body>
</html>





