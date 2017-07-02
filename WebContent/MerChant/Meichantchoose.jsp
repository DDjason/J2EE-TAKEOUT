<%@ page language="java" import ="zafu.bc.OPMenu" import="zafu.info.*" import="zafu.bc.OPRest"
import= "java.sql.ResultSet"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单</title>

<link rel="stylesheet" href="../css/Load.css" type="text/css"  />

<!-- Javascript -->
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<script src="../js/Load.js" type="text/javascript"></script>
<script src="../js/LoadZhaozao.js" type="text/javascript"></script>
 
<!-- CSS -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="../css/style-print.css" type="text/css" media="print" />

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="../image/x-icon" />
<style type="text/css">
body {background-image: url("../img/80.jpg");}

</style>

</head>
<body>
<div class="zhezhao" id="zhezhao"  ></div> 
 <div class="login" id="login">
 <button id="btclose"  >点击关闭</button>
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
<input  type="button" value="登录" onclick="Load()"/>
   
<input  type="button" value="注册" onclick="LoadRegist()"/>
</div>
<div id = "toolTip"> </div>
</div>
</form>
 </div>  

<div class = "registjsp" id = "registjsp">
<button id="btclose">点击关闭</button>
<form action="" name = "regist" id= “input”>
		<table valign = middle align = "center">
		<tr>
		<td>用户名</td><td><input type = "text" name = "usename" value = ""></td>
		</tr>
		<tr>
		<td>密码</td><td><input type = "password" name = "password" value = ""></td>
		</tr>
		<tr>
		<td>再次输入</td><td><input type = "password" name = "checkpassword" value = ""></td>
		</tr>
		<tr>
		<td>姓名</td><td><input type = "text" name = "name" value = ""></td>
		</tr>
		<tr>
		<td>送餐地址</td><td><input type = "text" name = "address" value = ""></td>
		</tr>
		<tr>
		<td>电话</td><td><input type = "text" name = "telphone" value = ""></td>
		</tr>
		<tr>
		<td>备注</td><td><input type = "text" name = "info" value = ""></td>
		</tr>
		</table>
		<div valign = "middle" align = "center">
			<input type = "button" value = "提交" onclick = "registsm()"/> 
			<input type = "button" value = "重置" onclick = "whatup()"> 
			</div>
		</form>
	
</div>
<%
String usename=request.getParameter("useid");
Restaurant rest= OPRest.QueryRest(usename);
%>


<div id="wrapper">
	<h1><a href="/"><span><%=rest.GetName()%> 餐厅管理</span></a></h1>
	<p class="description"></p>

<hr class="noscreen" />

		<h2>管理项选择</h2>

			<div class="gallery">
			
			<a href="ChantMeun.jsp?useid=<%=usename %>" ><h1 >菜单管理</h1></a>
			<a href="ChantOrder.jsp?useid=<%=usename %>" ><h1>订单管理</h1></a>
			<a href="ChantInfo.jsp?useid=<%=usename %>" ><h1>信息完善</h1></a>

			<div class="cleaner">&nbsp;</div>
			</div>

<hr class="noscreen" />
</button>
	
		
			
<hr class="noscreen" />

<div id="footer">
	<p class="left">Copyright &copy; 2016 <a href="#">da/jun/hui</a></p>
	<p class="right"> tip: 
	<a href="http://www.baidu.com" >搜索</a></p>
</div>


<ul id="menu">
	<li><a href="../Main.jsp" class="active">主页</a></li>
	<li><a href="ChantOrder.jsp?useid=<%=usename %>" >我的订单</a></li>
	<li><a href="#"><%=usename %></a></li>
	<li><a href="ChantInfo.jsp?useid=<%=usename %>" >信息</a></li>
	<li  id="bt"><a href="#">管理员登录</a></li>
</ul>
</div>
</body>
</html>





