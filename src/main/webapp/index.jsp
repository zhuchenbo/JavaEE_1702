<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index page</title>
</head>
<body>
<h1>登录</h1>
<form action="login.jsp">
    <input type="text" name="mobile" placeholder="手机号"><br>
    <input type="password" name="password" placeholder="密码"><br>
    <input type="submit" value="登录">
</form>
<%--<p><%=request.getAttribute("message")%></p>--%>
<p><%String message=(String) request.getAttribute("message");
if (message!=null){
    out.print(message);
}%></p>
<a href="signuo.jsp">注册</a>
</body>
</html>
