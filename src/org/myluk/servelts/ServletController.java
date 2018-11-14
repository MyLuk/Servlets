package org.myluk.servelts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletController", urlPatterns = {"/Controller"})
public class ServletController extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param = request.getParameter("page");
        if (param.equals("login")) {
            getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
        }
        else if (param.equals("signup")) {
            getServletContext().getRequestDispatcher("/signUp.jsp").forward(request, response);
        }
        else if (param.equals("about")) {
            getServletContext().getRequestDispatcher("/about.jsp").forward(request, response);
        }
        else {
            getServletContext().getRequestDispatcher("/notFound.jsp").forward(request, response);
        }
    }
}
