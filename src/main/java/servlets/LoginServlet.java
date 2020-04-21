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
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
            throws ServletException, IOException {
        IRepo repo = RepoFactory.getRepo();

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        if (repo.checkCustomer(username,password)){
            req.getSession().setAttribute("username",username);

            utils.Utils.createLog(username,req);
            resp.sendRedirect("index.jsp");

        }
        else if(username.equalsIgnoreCase(ADMIN_USERNAME)&& password.equalsIgnoreCase(ADMIN_PASSWORD)){
            req.getSession().setAttribute("admin",ADMIN_USERNAME);
            resp.sendRedirect("index.jsp");
        }
        else{
            resp.sendRedirect("login.jsp");
        }

    }

}