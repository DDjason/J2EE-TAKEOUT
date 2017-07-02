<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>


<script src="js/Rej.js" type="text/javascript"></script>
<script type="text/javascript">
function registsm(){

	var usename = regist.usename.value;
	var password = regist.password.value;
	var checkpassword = regist.checkpassword.value;
	var name = regist.name.value;
	var address = regist.address.value;
	var tel = regist.telphone.value;
	var info = regist.info.value;
	if(usename == ""){
		alert("用户名为空！");
		regist.usename.focus();
	}else if(password == ""){
		alert("密码为空！");
		regist.password.focus();
	}else if(checkpassword != password){
		alert("密码输入不一致！");
		regist.checkpassword.value = "";
	}else{
		 loadXMLDoc( "regist_base.jsp?usename=" + usename +
		 			"&password=" + password +
		 			"&name=" + name +
		 			"&address=" + address +
		 			"&info=" + info +
		 			"&tel=" + tel +
		 			"&timestamp=" + new Date().getTime());
	}

}
</script>
<style type="text/css">
body {background-image: url("img/80.jpg");}

</style>
<style type="text/css"> 

.header_loadregist{
background-color:Red;
width:100%;
height:30px;
}

body{
 background-image: url(img/body_bg.jpg);
}
</style> 

</head>
<body >

<div class = "header_loadregist">
</div>	
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
	<div id = "toolTip"> </div>

</body>
</html>