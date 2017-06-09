<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String nick = request.getParameter("nick");
    out.println(nick);
    String mobile = request.getParameter("mobile");
    out.println(mobile);
    String password = request.getParameter("password");
    out.println(password);
    String[] hobbies = request.getParameterValues("hobbies");
    String[] cities = request.getParameterValues("cities");
    System.out.println("hobbies: " + Arrays.toString(hobbies));
    System.out.println("cities: " + Arrays.toString(cities));
    new Driver();
    Connection connection = DriverManager.getConnection("jdbc:mysql:///?user=root&password=zhu1234");
    String sqlNick = "SELECT * FROM db_javaee.user WHERE nick = ?";
    PreparedStatement statement = connection.prepareStatement(sqlNick);
    statement.setString(1, nick);
    ResultSet resultSet = statement.executeQuery();
    boolean isNickExist = resultSet.next();
    String sqlMobile = "SELECT * FROM db_javaee.user WHERE mobile = ?";
    statement = connection.prepareStatement(sqlMobile);
    statement.setString(1, mobile);
    resultSet = statement.executeQuery();
    boolean isMobileExist = resultSet.next();
    if (isMobileExist & isNickExist) {
        request.setAttribute("message", "昵称和手机号已经存在");
        request.getRequestDispatcher("signuo.jsp").forward(request, response);
    } else if (isNickExist) {
        request.setAttribute("message", "昵称已经存在");
        request.getRequestDispatcher("signuo.jsp").forward(request, response);
    } else if (isMobileExist) {
        request.setAttribute("message", "手机号已经存在");
        request.getRequestDispatcher("signuo.jsp").forward(request, response);
    } else {
        String sql = "INSERT INTO db_javaee.user VALUE (NULL ,?,?,?)";
        statement = connection.prepareStatement(sql);
        statement.setString(1, nick);
        statement.setString(2, mobile);
        statement.setString(3, password);
        statement.executeUpdate();
        response.sendRedirect("index.jsp");
    }
    resultSet.close();
    statement.close();
    connection.close();
%>
</body>
</html>