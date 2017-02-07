<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="jar.DBUtil" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
    
     String name=request.getParameter("username");//获取name的参数
     String pass=request.getParameter("password");//获取password的参数
     Connection conn =DBUtil.open();//获取数据库的链接
     String sql="insert into table1(username,password) values(?,?)";
     PreparedStatement pst=conn.prepareStatement(sql);
     pst.setString(1,name);
     pst.setString(2,pass);
     int rs=pst.executeUpdate();
     if(rs>0)
     {	
         out.print("注册成功");
         out.println("<a href='login.jsp'>返回登录页面</a>");
     }else
     {
       out.print("注册失败！");
       out.println("<a href='register.jsp'>重新注册</a>");
     }
%>
   