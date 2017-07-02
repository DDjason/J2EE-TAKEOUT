<%@ page language="java" import ="zafu.bc.OPMenu" import="zafu.info.*" import="zafu.bc.OPRest" import="zafu.bc.OPOrderlist"
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
<script src="../js/Ajax.js" type="text/javascript"></script>
<script  type="text/javascript">
function doFun(oid){
	loadXMLDoc("ChantCheckOrder_base.jsp?ooid="+oid);
	location.reload(true); 
}

function doXFun(oid){
	loadXMLDoc("ChantOrderDelete.jsp?ooid="+oid);
	location.reload(true); 
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

		<h2>订单处理</h2>
<table >
<caption><h2>订单管理</h2></caption>
<tr><th><h3>订单编号</h3></th>
	<th><h3>订单总额</h3></th>
	<th><h3>订单是否处理</h3></th>
	
	<th><h3>订单处理</h3></th>
	<th><h3>订单取消</h3></th>

</tr>
<div class="gallery">
<%
Orderlist temp = new Orderlist();

ResultSet rs = null;
rs =OPOrderlist.QueryOrderlistByR(usename);


try{
	
	while(rs.next()){
		temp.setCanting(rs.getString("r_编号"));
		temp.SetDri(rs.getBoolean("o_是否送餐"));
		temp.SetOrder(rs.getInt("o_编号"));
		temp.SetSumM(rs.getDouble("o_总价"));
		
		System.out.printf("%s %s %s %s",temp.GetCanting(),temp.GetDri(),temp.GetOrder(),temp.GetSumM());

		%>
		

<tr>
<td><input type = "text" name = "" value = <%=temp.GetOrder() %>></td>
<td><input type = "text" name = "" value = <%=temp.GetSumM() %>></td>
<td><input type = "text" name = "" value = <%=temp.GetDri() %>></td>

<td><button  onclick = "doFun(<%=temp.GetOrder()%>)">处理</button></td>
<td><button onclick = "doXFun(<%=temp.GetOrder() %>)">取消</button></td>
</tr>
		
		
	<%
	}
	
}catch(Exception e){
	System.out.println("获取订单失败！");
	e.printStackTrace();
}
%>

</table>	
<div class="cleaner">&nbsp;</div>
		</div>

<hr class="noscreen" />

	


</div>
</body>
</html>





