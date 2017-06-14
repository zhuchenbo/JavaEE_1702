<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index page</title>
</head>
<body>
<h1>登录
</h1>
<form action="user" method="post">
    <input type="hidden" name="action" value="login">
    <p><input type="text" name="mobile" placeholder="手机号"></p>
    <p><input type="password" name="password" placeholder="密码"></p>
    <input type="submit" value="登录">
</form>
<%--<%=(request.getAttribute("message") != null) ? request.getAttribute("message") : ""%>--%>
<p>
    <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
            out.print(message);
        }
    %>
</p>
<a href="signuo.jsp">注册</a>
</body>
</html>