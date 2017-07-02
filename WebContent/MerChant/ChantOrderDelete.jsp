<%@ page language="java" import="java.sql.*" import="zafu.bc.OPOrderlist" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String usename=request.getParameter("ooid");
OPOrderlist.DeleteOrder(usename);
%>