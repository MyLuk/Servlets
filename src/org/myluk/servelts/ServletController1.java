package org.myluk.servelts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ServletController1")
public class ServletController1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println(request.getParameter("name"));
        out.println(request.getParameter("gender"));
        String[] languages = request.getParameterValues("Language");
        if(languages!=null) {
            for (String lang:languages
            ) {
                out.println(lang);
            }
        }
        else out.println("Not set");
        out.println(request.getParameter("country"));
    }


}
