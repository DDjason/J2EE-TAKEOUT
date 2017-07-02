<%@ page language="java" import="java.sql.*" import="zafu.bc.OPMenu" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String m_编号 = request.getParameter("ss1");
String  m_菜名 = request.getParameter("ss2");
String m_价格 = request.getParameter("ss5");
String  m_信息 = request.getParameter("ss4");
String  m_imgURL = request.getParameter("ss6");
String m_Have = request.getParameter("ss3");
String r_编号 = request.getParameter("ss7");
System.out.printf("%s",m_编号);
OPMenu.AddMenu(m_编号, m_菜名, m_价格, m_信息, m_imgURL, m_Have, r_编号);
%>