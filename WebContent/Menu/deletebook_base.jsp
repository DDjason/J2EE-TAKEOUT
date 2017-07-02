<%@ page language="java" import="zafu.bc.*" pageEncoding="UTF-8" %>
<%

String mid=request.getParameter("mid");
String oid=request.getParameter("oid");
OPBook.DelBook(oid, mid);
%>