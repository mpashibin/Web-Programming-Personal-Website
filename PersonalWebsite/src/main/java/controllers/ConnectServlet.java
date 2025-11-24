package controllers;


import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.User;

import java.io.IOException;

@WebServlet(name = "connect", urlPatterns = "/connect")
public class ConnectServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String target = "/thanks.jsp";

        final String firstName = request.getParameter("firstName");
        final String lastName = request.getParameter("lastName");
        final String email = request.getParameter("email");

        if(firstName != null && !firstName.isEmpty() && lastName != null && !lastName.isEmpty() && email != null && !email.isEmpty()) {
            final User user = new User(firstName, lastName, email);

            //TODO put the user into a database

            request.setAttribute("user", user);

        } else {
            target = "/index.jsp";
            request.setAttribute("message", "Please fill out all form fields.");
        }

        getServletContext().getRequestDispatcher(target).forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message", "Please fill out the form.");
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
}