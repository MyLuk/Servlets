package org.myluk.servelts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ServletMemberAriaController")
public class ServletMemberAriaController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "destroy":
                request.getSession().invalidate();
//                Cookie[] cookies = request.getCookies();
//                for (Cookie cookie: cookies) {
//                    if (cookie.getName().equals("username")) {
//                        cookie.setValue(null);
//                        cookie.setMaxAge(0);
//                        response.addCookie(cookie);
//                    };
//
//                }
                response.sendRedirect("login1.jsp");
                break;
            case "memberArea":
                request.getRequestDispatcher("memberArea.jsp").forward(request, response);
            default: break;
        }
    }
}
