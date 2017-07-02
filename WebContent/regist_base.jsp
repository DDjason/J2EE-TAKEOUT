<%@ page language="java" import="zafu.bc.OTLoad" pageEncoding="UTF-8" %>
<%
String usename = request.getParameter("usename");
String name = request.getParameter("name");
String password = request.getParameter("password");
String address = request.getParameter("address");
String info = request.getParameter("info");
String tell=request.getParameter("tel");
boolean t = OTLoad.Regist(usename, password,name,address,tell,info);
String useid = null;
if(t == true)
{	useid = usename;
	out.print(useid);
}
else
{
	out.println("注册失败！");
}

%>
