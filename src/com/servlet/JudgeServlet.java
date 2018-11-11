package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class JudgeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String textcode = request.getParameter("checkcodetext");
        String word = (String) request.getSession().getAttribute("word");


        if (username.equals("admin") && password.equals("admin") && textcode.equals(word))
            response.sendRedirect("a.html");
        else if (!textcode.equals(word))
        {
            response.setContentType("text/html");
            response.setCharacterEncoding("utf-8");
            response.getWriter().print("验证码不正确");
            response.getWriter().print("<a href='index.jsp'>点击返回</a>");
        }
        else{
            response.setContentType("text/html");
            response.setCharacterEncoding("utf-8");
            response.getWriter().print("用户名或密码不正确");
            response.getWriter().print("<a href='index.jsp'>点击返回</a>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
