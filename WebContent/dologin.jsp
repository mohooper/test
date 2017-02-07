<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="jar.*" %>
<%@ page import="java.sql.*" %>
<%
    try{
    	
    	
    	String name=request.getParameter("username");
    	String password=request.getParameter("password");
    	
    	
    	Connection conn =DBUtil.open();
    	String sql="select * from table1 where username=? and password=?";
        PreparedStatement pst=conn.prepareStatement(sql);
    	pst.setString(1,name);
    	pst.setString(2,password);
    	ResultSet rs=pst.executeQuery();
    	if(rs.next()){
    		session.setAttribute("username",name);
    	    response.sendRedirect("login_success.jsp");
    	}else
    	{
    		out.print("登陆失败，请重新登陆");
    	}
    }catch(Exception ex){
    	ex.printStackTrace();
    }
    %>
    
