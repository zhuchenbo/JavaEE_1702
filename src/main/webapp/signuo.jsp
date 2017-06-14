<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>sign up page</title>
</head>
<body>
<h1>注册</h1>
<form action="user" method="post">
    <input type="hidden" name="action" value="register">
    <p><input type="text" name="nick" placeholder="昵称"></p>
    <p><input type="text" name="mobile" placeholder="手机号"></p>
    <p><input type="password" name="password" placeholder="密码"></p>
    <%--hobbies：--%>
    <%--<input type="checkbox" name="hobbies" value="TV">TV--%>
    <%--<input type="checkbox" name="hobbies" value="Movie">Movie--%>
    <%--<input type="checkbox" name="hobbies" value="Game">Game<br>--%>
    <%--cities：--%>
    <%--<select name="cities" multiple>--%>
        <%--<option value="Beijing">Beijing</option>--%>
        <%--<option value="Shanghai">Shanghai</option>--%>
        <%--<option value="Shenzhen">Shenzhen</option>--%>
    <%--</select><br>--%>
    <input type="submit" value="注册">
    <p><a href="user?action=logout">返回首页</a></p>
</form>
${requestScope.message}
<%--<%--%>
    <%--String message = (String) request.getAttribute("message");--%>
    <%--if (message != null) {--%>
        <%--out.print(message);--%>
    <%--}--%>
<%--%>--%>
</body>
</html>