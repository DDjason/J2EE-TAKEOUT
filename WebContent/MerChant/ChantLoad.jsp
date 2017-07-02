<%@ page language="java" import="zafu.bc.OTLoad" pageEncoding="UTF-8" %>
<%
String name = request.getParameter("name");
String password = request.getParameter("password");
boolean t = OTLoad.RSingIn(name,password);
if(t == false)
	out.print(0);
else
{
	out.print(1);
}


%>
