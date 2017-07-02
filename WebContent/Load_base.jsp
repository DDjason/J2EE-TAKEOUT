<%@ page language="java" import="zafu.bc.OTLoad" pageEncoding="UTF-8" %>
<%
String name = request.getParameter("name");
String password = request.getParameter("password");
int t = OTLoad.SingIn(name,password);
if(t < 0)
	out.println("登录失败！");
else
{
	out.println(1);
}
%>
