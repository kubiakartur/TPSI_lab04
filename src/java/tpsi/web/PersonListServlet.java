package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PersonListServlet", urlPatterns = {"/personList"})
public class PersonListServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
        response.setContentType("text/html;charset=UTF-8");
                
            try (PrintWriter out = response.getWriter()){
                List<Person> lista = new ArrayList<>();
                lista.add(new Person("Tom", "Hanks", "Hanks@gmail.com"));
                lista.add(new Person("Mike", "Tyson", "mike@wp.pl"));
                lista.add(new Person("Grzegorz", "Piłka", "grzesio999@onet.pl"));
                lista.add(new Person("Jarek", "Parek", "jarp@gmail.com"));
                lista.add(new Person("Tommy Lee", "Stonessss", "tls@hotmail.com"));
                request.setAttribute("listaOsob", lista);
                request.getRequestDispatcher("personList.jsp").forward(request, response);
            }
    }
}