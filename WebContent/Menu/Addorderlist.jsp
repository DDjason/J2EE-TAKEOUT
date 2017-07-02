<%@ page language="java" import="zafu.bc.*" pageEncoding="UTF-8" %>
<%

String mid=request.getParameter("mid");
String useid=request.getParameter("useid");
String oid = request.getParameter("oid");
OPOrderlist.DOTHATcont(useid,oid);
OPOrderlist.AddOrderlist(mid);
%>