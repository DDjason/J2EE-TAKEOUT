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

<!-- CSS -->
<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="../css/style-print.css" type="text/css" media="print" />

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="../image/x-icon" />
<script src="../js/book_base.js" type="text/javascript"></script>
<script type="text/javascript">
function defun()
{
	var mid = document.Loadjsp.loadpassword.value;
	loadXMLDoc2( "deletebook_base.jsp?oid=1000001" +
			"&mid=" + mid +"&timestamp=" + new Date().getTime());
}
</script>
<style type="text/css">
body {background-image: url("../img/80.jpg");}

</style>
</head>
<body>


<div id="wrapper">
	<h1><a href="/"><span>餐厅名字</span></a></h1>
	<p class="description"></p>

<hr class="noscreen" />

		<h2>订单信息</h2>

			<div class="gallery">
<%
	String oidname = request.getParameter("oid");
	String cuseid = request.getParameter("useid");
	ResultSet rs = null;
		rs =	 OPOrderlist.QueryBooklist(oidname);
		try{
		//	DataInf.Menu temp =  new DataInf.Menu();
				String _o_编号;
				String _m_编号;
			 int _b_数量;
			 double  o_总价 = 0;
			 double  o_类总价;
						while(rs.next())
		{
							o_类总价 = 0;
				_o_编号 = rs.getString("o_编号");
				_m_编号 = rs.getString("m_编号");
				_b_数量 = rs.getShort("b_数量");
					//o_总价 = rs.getDouble("o_总价");
					System.out.println(_m_编号 + " "+  _b_数量+" "  + " " + _o_编号);
					Menu a = new Menu(2);
					
					a = OPMenu.QueryMenuone(_m_编号);
					String GetMName = a.GetMName();
					double money = a.GetMPric() * _b_数量;
%>
	<div class="photo"  >
				<a href="#"><img src=<%=a.GetimgURL() %> alt="foto" width="160" height="100" /></a>
				<a href="#"><%=GetMName %></a>
				<a href="#"><%=_b_数量 %></a>
				<a href="#"><%=a.GetMPric() %></a>
				<a href="#"><%=money %></a>
				<br>
				<a href="#">添加</a><a onclick = "defun()">删除</a>
				</div>
				
<%
			}
			
	}catch(Exception e){
		System.out.println("读取订单信息失败！");
			e.printStackTrace();
	}
		
%>
	
<P><%=oidname %></P>

				<div class="cleaner">&nbsp;</div>
			
			  <div><h2>提交按钮<h2></div>
			</div>
			
<hr class="noscreen" />

<div id="footer">
	<p class="left">Copyright &copy; 2016 <a href="#">Your Name</a></p>
	<p class="right"> tip: 
	<a href="http://www.baidu.com" >搜索</a></p>
</div>


<ul id="menu">
	<li><a href="../Main.jsp" class="active">主页</a></li>
	<li><a href="Orderlist.jsp?useid=<%=cuseid %>">订单</a></li>
	<li><a href="#"><%=cuseid %></a></li>
	<li><a href="Menu.jsp?useid=<%=cuseid %>">菜单</a></li>
	<li><a href="#">登录/退出</a></li>
</ul>

</div>



</body>
</html>





