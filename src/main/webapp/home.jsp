<%@ page import="java.sql.ResultSet" %>
<%@ page import="demo.model.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border-collapse: collapse;
        }

        th,
        td {
            border: 1px solid #333;
        }
    </style>
    <script>
        function del() {
            return confirm('是否确认删除？');
        }
        function selectAll() {
            var cb = document.getElementById('cb');
            var items = document.getElementsByClassName('to_be_delete');
            for (var i = 0; i < items.length; i++) {
                items[i].checked = cb.checked;
            }
        }
    </script>
</head>
<body>
<c:if test="${sessionScope.nick eq null}">
    <c:redirect url="index.jsp"/>
</c:if>
<h1>主页</h1>
<p><%=session.getAttribute("nick")%>&nbsp;欢迎您</p>
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
<form action="student" method="post">
    <input type="hidden" name="action" value="batchRemove">
    <table>
        <c:choose>
            <c:when test="${fn:length(sessionScope.students) eq 0}">
                当前没有记录
            </c:when>
            <c:otherwise>
                <tr>
                    <th><input id="cb" type="checkbox" onclick="selectAll()">序号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>出生日期</th>
                    <th colspan="2">操作</th>
                </tr>
            </c:otherwise>
        </c:choose>
        <c:forEach var="student" items="${sessionScope.students}"
                   varStatus="vs">        <%--begin="1" 起始于第一条  end="1" 终止于第一条--%>
            <tr>
                <td><input class="to_be_delete" type="checkbox" name="ids" value="${student.id}">${vs.count}</td>
                <td>${student.name}</td>
                <td>${student.gender}</td>
                <td>${student.dob}</td>
                <td><a href="student?action=queryById&id=${student.id}">编辑</a></td>
                <td><a href="student?action=remove&id=${student.id}" onclick="return del()">删除</a></td>
            </tr>
        </c:forEach>
    </table>
    <input type="submit" value="删除">
</form>
${requestScope.message}
</body>
</html>