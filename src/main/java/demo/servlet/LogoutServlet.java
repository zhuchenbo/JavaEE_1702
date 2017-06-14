//package demo.servlet;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
///**
// * Created by mingfei.net@gmail.com
// * 6/9/17 11:39
// * https://github.com/thu/JavaEE_1702/
// */
//@WebServlet(urlPatterns = "/logout")
//public class LogoutServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.getSession().invalidate();
//        resp.sendRedirect("index.jsp");
//    }
//}