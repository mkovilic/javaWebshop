package servlets;

import repo.IRepo;
import repo.RepoFactory;
import utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    private static final String ADMIN_USERNAME = "admin";
    private static final String ADMIN_PASSWORD = "admin";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        IRepo repo = RepoFactory.getRepo();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equalsIgnoreCase(ADMIN_USERNAME) && password.equalsIgnoreCase(ADMIN_PASSWORD)) {
            request.getSession().setAttribute("admin", ADMIN_USERNAME);
            response.sendRedirect("index.jsp");
        } else if (repo.checkCustomer(username, password)) {
            request.getSession().setAttribute("username", username);
            Utils.createLog(username, request);
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }

    }

}