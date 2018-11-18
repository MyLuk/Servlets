package org.myluk.servelts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/ServletSiteController")
public class ServletSiteController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "loginSubmit":
                authenticate(request, response);
                break;
            default:
                break;
        }

    }

    private void authenticate(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("Misha") && password.equals("Love")) {
            request.getSession().invalidate();
            HttpSession newSession = request.getSession(true);
            newSession.setMaxInactiveInterval(300);
//            Cookie cUsername = new Cookie("username", username);
//            response.addCookie(cUsername);
            newSession.setAttribute("username", username);
//            response.sendRedirect("memberArea.jsp");
            String encode = response.encodeURL(request.getContextPath());
            response.sendRedirect(encode+"/ServletMemberAriaController?action=memberArea");
        }
        else {
//            response.sendRedirect("login1.jsp");
            response.sendRedirect(request.getContextPath()+"/ServletSiteController?action=login");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        switch (action) {
            case "login":
                req.getRequestDispatcher("login1.jsp").forward(req, resp);
                break;
            default:
                break;
        }
    }
}
