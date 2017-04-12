<%--
  Created by IntelliJ IDEA.
  User: kingwen
  Date: 2017/4/12
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <h1>登录界面</h1>
    <form action="login">
      <label for="name">Please enter your name</label><br/>
      <input type="text" name="username"/>
      <input type="submit" value="Say Hello"/>
    </form>
  </body>
</html>
