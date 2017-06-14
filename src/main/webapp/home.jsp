<%@ page import="java.sql.ResultSet" %>
<%@ page import="demo.model.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<p><%=session.getAttribute("nick")%>&nbsp;欢迎您</p>
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
    <c:choose>
        <c:when test="${fn:length(sessionScope.students) eq 0}">
            当前没有记录
        </c:when>
        <c:otherwise>
            <tr>
                <th>勾选</th>
                <th>序号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>出生日期</th>
                <th colspan="2">操作</th>
            </tr>
        </c:otherwise>
    </c:choose>
<%--<table border="1">--%>
    <%--<c:choose>--%>
        <%--<c:when test="${sessionScope.students[0] eq null}">--%>
            <%--当前没有记录--%>
        <%--</c:when>--%>
        <%--<c:otherwise>--%>
            <%--<tr>--%>
                <%--<th>序号</th>--%>
                <%--<th>姓名</th>--%>
                <%--<th>性别</th>--%>
                <%--<th>出生日期</th>--%>
                <%--<th colspan="2">操作</th>--%>
            <%--</tr>--%>
        <%--</c:otherwise>--%>
    <%--</c:choose>--%>
<%--<%--%>
        <%--List<Student> resultSet = (List<Student>) session.getAttribute("students");--%>
<%--//        List<Student> resultSet = (List<Student>) session.getAttribute("students");--%>
        <%--for (Student student:resultSet) {--%>
            <%--out.print("<tr>" + "<td>" + student.getId() + "</td>" + "<td>" + student.getName() + "</td>" + "<td>" + student.getGender() + "</td>" + "<td>" + student.getDob() + "<td><a href='student?action=queryById&id=" + student.getId() + "'>编辑</a></td>" + "<td><a href='student?action=remove&id=" + student.getId() + "' onclick='return del()'>删除</a></td>" + "</tr>");--%>
        <%--}--%>
    <%--%>--%>
    <%--<%--%>
        <%--List<Student> resultSet = (List<Student>) session.getAttribute("students");--%>
        <%--for (Student student:resultSet) {--%>
            <%--out.print("<tr>" + "<td>" + student.getId() + "</td>" + "<td>" + student.getName() + "</td>" + "<td>" + student.getGender() + "</td>" + "<td>" + student.getDob() + "<td><a href='student?action=queryById&id=" + student.getId() + "'>编辑</a></td>" + "<td><a href='student?action=remove&id=" + student.getId() + "' onclick='return del()'>删除</a></td>" + "</tr>");--%>

        <%--}--%>

    <%--%>--%>

    <c:forEach var="student" items="${sessionScope.students}" varStatus="vs">        <%--begin="1" 起始于第一条  end="1" 终止于第一条--%>
        <tr>
            <td></td>
            <td>${vs.count}</td>
            <td>${student.name}</td>
            <td>${student.gender}</td>
            <td>${student.dob}</td>
            <td><a href="student?action=queryById&id=${student.id}">编辑</a></td>
            <td><a href="student?action=remove&id=${student.id}" onclick="return del()">删除</a></td>
            <td></td>
        </tr>
    </c:forEach>
</table>
${requestScope.message}
<%--<%--%>
    <%--String message = (String) request.getAttribute("message");--%>
    <%--if (message != null) {--%>
        <%--out.print(message);--%>
    <%--}--%>
<%--%>--%>
</body>
</html>