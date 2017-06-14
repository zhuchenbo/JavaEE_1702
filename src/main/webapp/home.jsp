<%@ page import="demo.model.Student" %>
<%@ page import="java.util.List" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<%--%>
<%--if (session.getAttribute("nick") == null) {--%>
<%--response.sendRedirect("index.jsp");--%>
<%--}--%>
<%--%>--%>
<%--<h1>登陆成功</h1>--%>
<%--<p><%=session.getAttribute("nick")%>欢迎您</p>--%>
<%--&lt;%&ndash;<a href="second.jsp">下一页</a>&ndash;%&gt;--%>
<%--<%--%>
<%--pageContext.setAttribute("key", "value");--%>
<%--application.setAttribute("app-key","app-value");--%>
<%--%>--%>
<%--&lt;%&ndash;<%=pageContext.getAttribute("key")%>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%=application.getAttribute("app-key")%>&ndash;%&gt;--%>
<%--<p><a href="user?action=logout">注销</a></p>--%>
<%--<hr>--%>
<%--<form action="student" method="post">--%>
<%--<input type="hidden" name="action" value="add">--%>
<%--<p><input type="text" name="name" placeholder="姓名"></p>--%>
<%--<p><input type="text" name="gender" placeholder="性别"></p>--%>
<%--&lt;%&ndash;<input type="radio" name="gender" value="男" checked />男&ndash;%&gt;--%>
<%--&lt;%&ndash;<input type="radio" name="gender" value="女"  />女<br>&ndash;%&gt;--%>
<%--<p><input type="date" name="dob" placeholder="出生日期"></p>--%>
<%--<input type="submit" value="添加">--%>
<%--</form>--%>
<%--<hr>--%>
<%--<table border="1">--%>
<%--<tr>--%>
<%--<th>ID</th>--%>
<%--<th>姓名</th>--%>
<%--<th>性别</th>--%>
<%--<th>出生日期</th>--%>
<%--<th colspan="2">操作</th>--%>
<%--</tr>--%>
<%--<%--%>
<%--List<Student> resultSet = (List<Student>) session.getAttribute("students");--%>
<%--for (Student student : resultSet) {--%>
<%--out.print("<tr>" + "<td>" + student.getId() + "</td>" + "<td>" + student.getName() + "</td>" + "<td>" + student.getGender() + "</td>" + "<td>" + student.getDob() + "<td><a href='student?action=queryById&id=" + student.getId() + "'>编辑</a></td>" + "<td><a href='student?action=remove&id=" + student.getId() + "' onclick='return del()'>删除</a></td>" + "</tr>");--%>
<%--}--%>
<%--%>--%>
<%--</table>--%>
<%--<hr>--%>
<%--<%--%>
<%--String message = (String) request.getAttribute("message");--%>
<%--if (message != null) {--%>
<%--out.print(message);--%>
<%--}--%>
<%--%>--%>
<%--</body>--%>
<%--</html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function del() {
            return confirm('是否确认删除？');
        }
    </script>
</head>
<body>
<%
    if (session.getAttribute("nick") == null) {
        response.sendRedirect("default.jsp");
    }
%>
<h1>主页</h1>
<p><%=session.getAttribute("nick")%>
</p>
<%
    pageContext.setAttribute("key", "value");
    application.setAttribute("app-key", "app-value");
%>
<p><a href="user?action=logout">注销</a></p>
<hr>
<form action="student" method="post">
    <input type="hidden" name="action" value="add">
    <p><input type="text" name="name" placeholder="姓名"></p>
    <p><input type="text" name="gender" placeholder="性别"></p>
    <p><input type="date" name="dob" placeholder="出生日期"></p>
    <input type="submit" value="添加">
</form>
<hr>
<table border="1">
    <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>性别</th>
        <th>出生日期</th>
        <th colspan="2">操作</th>
    </tr>
    <%--<%--%>
        <%--List<Student> resultSet = (List<Student>) session.getAttribute("students");--%>
<%--//        List<Student> resultSet = (List<Student>) session.getAttribute("students");--%>
        <%--for (Student student:resultSet) {--%>
            <%--out.print("<tr>" + "<td>" + student.getId() + "</td>" + "<td>" + student.getName() + "</td>" + "<td>" + student.getGender() + "</td>" + "<td>" + student.getDob() + "<td><a href='student?action=queryById&id=" + student.getId() + "'>编辑</a></td>" + "<td><a href='student?action=remove&id=" + student.getId() + "' onclick='return del()'>删除</a></td>" + "</tr>");--%>
        <%--}--%>
    <%--%>--%>
    <%
        List<Student> resultSet = (List<Student>) session.getAttribute("students");
        for (Student student:resultSet) {
            out.print("<tr>" + "<td>" + student.getId() + "</td>" + "<td>" + student.getName() + "</td>" + "<td>" + student.getGender() + "</td>" + "<td>" + student.getDob() + "<td><a href='student?action=queryById&id=" + student.getId() + "'>编辑</a></td>" + "<td><a href='student?action=remove&id=" + student.getId() + "' onclick='return del()'>删除</a></td>" + "</tr>");

        }
    %>
</table>
<hr>
<%
    String message = (String) request.getAttribute("message");
    if (message != null) {
        out.print(message);
    }
%>
</body>
</html>