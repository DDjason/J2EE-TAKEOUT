<%@ page language="java" import ="zafu.bc.*"
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
 width:320px; 
 height:320px; 
 position:absolute; 
 top:200px; 
 left:50%; 
 background-image: url(../img/body_bg.jpg);
 background-color:White; 
 margin-left:-140px; 
 display:none; 
 z-index:1500; 
} 
.registjsp
{
width:320px; 
 height:320px; 
 position:absolute; 
 top:200px; 
 left:50%; 
 background-color:White; 
 margin-left:-140px; 
 display:none; 
 z-index:1500; 
}
</style> 

<!-- Javascript -->
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<script src="../js/Load.js" type="text/javascript"></script>
<script src="../js/book_base.js" type="text/javascript"></script>

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
 registxz.onclick=function()
 {
	 zhezhao.style.display="block"; 
	  login.style.display="none";
	  rejistjsp.style.display="block";
 }
} 
</script> 
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
String useid = request.getParameter("useid");
String needid=request.getParameter("rid");
String neename=request.getParameter("rname");
int oid = OPOrderlist.GetMaxOrder();
String m_编号;
 String m_菜名;
 double  m_价格;
String m_信息;
String m_imgURL;
int  m_Have;
 String r_餐厅;
	ResultSet rs = null;
rs =	 OPMenu.QueryMenu(needid);

%>
<p><%=needid %></p>
<p><%=oid %></p>
<p><%=useid %></p>
<div id="wrapper">

	<h1><a href="/"><span><%=neename%></span></a></h1>
	<p class="description"></p>

<hr class="noscreen" />

		<h2>菜单列表</h2>

			<div class="gallery">
			<form>
			
<%	
try{

		while(rs.next())
		{

				m_编号 = rs.getString("m_编号");
				m_菜名 = rs.getString("m_菜名");
				m_信息 = rs.getString("m_信息");
				r_餐厅 = rs.getString("r_编号");
				m_imgURL = rs.getString("m_imgURL");
				m_价格 = rs.getDouble("m_价格");
				m_Have = rs.getShort("m_Have");
				System.out.println(r_餐厅 + " "+  m_菜名+" " + m_编号 + " " + m_Have + " " + m_价格 + " " + m_imgURL);
%>

				<div class="photo">
				<a href="#"><img src=<%=m_imgURL %> alt="foto" width="160" height="100" /></a>
				<p><a href="#"><%=m_菜名 %></a> &nbsp 单价 &nbsp<%=m_价格 %><input type="checkbox" name="xuancai" value = <%=m_编号 %>></p>
				</div>
<%
		}
		
	}catch(Exception e){
		System.out.println("读取菜单失败！");
		e.printStackTrace();
	}
%>
	
			</form>

				<div class="cleaner">&nbsp;</div>
			</div>

<hr class="noscreen" />

<button  onclick = "xfun()"><h2>确定选菜</h2>
</button>
	
		
			
<hr class="noscreen" />

<div id="footer">
	<p class="left">Copyright &copy; 2016 <a href="#">Your Name</a></p>
	<p class="right"> tip: 
	<a href="http://www.baidu.com" >搜索</a></p>
</div>


<ul id="menu">
	<li><a href="../Main.jsp" class="active">主页</a></li>
	<li><a href="subinof.jsp">我的订单</a></li>
	<li><a href="#"><%=useid %></a></li>
	<li><a href="Menu.jsp">信息</a></li>
	<li  id="bt"><a href="#">登录/退出</a></li>
</ul>

</div>
<script type="text/javascript"> 

function xfun(){
	 var rs = document.getElementsByName("xuancai");
	 var mid = document.getElementsByTagName("p")[0].innerHTML;
	 var oidd = document.getElementsByTagName("p")[1].innerHTML;
	 var useid = document.getElementsByTagName("p")[2].innerHTML;
	 alert(oidd);
	 loadXMLDoc2( "Addorderlist.jsp?mid="+mid+"&useid="+useid+"oid="+oidd+ "&timestamp=" + new Date().getTime());
	 alert(rs.length);
	 for( var i = 0; i < rs.length;  i++)
		{			
		if(rs[i].checked)
			{
				//s[index ++] = str[i].value;
				alert(rs[i].value);
				var mid = rs[i].value;
				loadXMLDoc2( "Book_base.jsp?oid="+oidd +
						"&mid=" + mid + "&nub=1"+"&timestamp=" + new Date().getTime());
			}
		}
	 location.href = "subinof.jsp?oid="+oidd;
}</script>


</body>
</html>





