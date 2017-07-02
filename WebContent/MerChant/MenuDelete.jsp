<%@ page language="java" import="java.sql.*" import="zafu.bc.OPMenu" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String usename=request.getParameter("mid");
OPMenu.DeleteMenu(usename);
%>