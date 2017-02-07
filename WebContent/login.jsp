<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登陆</title>
</head>
<body>
<h1>用户登录</h1>
<hr/>
<form name="login" action="dologin.jsp" method="post">
用户名<input type="text" name="username"/></br>
密码：<input type="password" name="password"/></br>
<input type="submit" value="登录">
<input type="reset" value="重置">
<a href="register.jsp">新用户注册</a>
</form>
</body>
</html>