<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>登陆成功</h1>
<p><%=session.getAttribute("nick")%>欢迎您</p>
<a href="second.jsp">下一页</a>
<p><a href="logout.jsp">注销</a></p>
</body>
</html>