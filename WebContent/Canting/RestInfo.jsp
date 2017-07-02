<%@ page language="java" import ="zafu.bc.*" import = "zafu.info.*"
import= "java.sql.ResultSet"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单</title>

<style type="text/css"> 

.zhezhao 
{ 
 width:100%; 
 height:100%; 
 background-color:#000; 
 filter:alpha(opacity=50); 
 -moz-opacity:0.5; 
 opacity:0.5; 
 position:absolute; 
 left:0px; 
 top:0px; 
 display:none; 
 z-index:1000; 
} 
.login 
{ 
 width:280px; 
 height:180px; 
 position:absolute; 
 top:200px; 
 left:50%; 
 background-color:#000; 
 margin-left:-140px; 
 display:none; 
 z-index:1500; 
} 

</style> 

<!-- Javascript -->
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<script type="text/javascript"> 
window.onload=function() 
{ 
 var zhezhao=document.getElementById("zhezhao"); 
 var login=document.getElementById("login"); 
 
 bt.onclick=function() 
 { 
  zhezhao.style.display="block"; 
  login.style.display="block"; 
 } 
 btclose.onclick=function() 
 { 
  zhezhao.style.display="none"; 
  login.style.display="none";  
 } 
} 
</script> 
<!-- CSS -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="../css/style-print.css" type="text/css" media="print" />

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="../image/x-icon" />


</head>
<body>

<div class="zhezhao" id="zhezhao"  ></div> 
 <div class="login" id="login">
 <button id="btclose">点击关闭</button>
 </div>  

<div id="wrapper">
	<h1><a href="#"><span>餐厅列表</span></a></h1>
	<p class="description"></p>

<hr class="noscreen" />

		<h2>餐厅列表</h2>

			<div class="gallery">
			<table border = "0">
<%

String useid = request.getParameter("useid");

String sql = "SELECT * FROM TAKEOUT.Restaurant;";
ResultSet rs = null;
rs = TOdbconnet.GetRsQuery(sql);

try{
	while(rs.next())
	{
		String r_编号 = rs.getString("r_编号");
		String r_餐厅名 = rs.getString("r_餐厅名");
		String r_TEL = rs.getString("r_TEL");
		String r_地址 = rs.getString("r_地址");
		String r_负责人 = rs.getString("r_负责人");
		String r_描述 = rs.getString("r_描述");
		String r_image = rs.getString("r_image");
		int r_评级 = rs.getShort("r_评级");
%>
<tr>
<td>
<a href="../Menu/Menu.jsp?rid=<%=r_编号 %>&rname=<%=r_餐厅名 %>&useid=<%=useid%>"><img src=<%=r_image%> alt="foto" width="160" height="100" /></a>
<p><a href="#"><%=r_餐厅名 %></a></p>
</td>
<td>
<p><a href="#"  width="160" height="100"><%=r_描述 %></a></p>
</td>
</tr>
<%
}
}catch(Exception e){
	System.out.println("读取商家失败！");
	e.printStackTrace();
}
%>
</table>
				<div class="cleaner">&nbsp;</div>
			</div>
<hr class="noscreen" />
<div id="footer">
	<p class="left">Copyright &copy; 2016 <a href="#">Your Name</a></p>
	<p class="right"> tip: 
	<a href="http://www.baidu.com" >搜索</a></p>
</div>
<ul id="menu">
	<li><a href="../Main.jsp?useid=<%=useid %>" class="active">主页</a></li>
	<li><a href="../Menu/Orderlist.jsp?useid=<%=useid %>">订单</a></li>
	<li><a href="#"><%=useid %></a></li>
	<li><a href="../Menu/Menu.jsp?useid=<%=useid %>">信息</a></li>
	<li  id="bt"><a href="#">登录/退出</a></li>
</ul>
</div>
</body>
</html>





