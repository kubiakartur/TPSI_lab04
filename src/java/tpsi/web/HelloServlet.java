package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "HelloServlet", urlPatterns = {"/hello"})
public class HelloServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            String imie = request.getParameter("firstName");
            String nazwisko = request.getParameter("lastName");
            String email = request.getParameter("email");
            Person test = new Person(imie, nazwisko, email);
            request.setAttribute("person", test);
            request.getRequestDispatcher("hello.jsp").forward(request, response);
        }
    }
}