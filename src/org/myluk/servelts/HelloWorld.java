package org.myluk.servelts;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "HelloWorld", urlPatterns = {"/abc", "/HelloWorld"})
public class HelloWorld extends HttpServlet {
//    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
//
//    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        System.out.println("Hello World!");
        response.getWriter().println("<h1>Shalom</h1>");
    }
}
