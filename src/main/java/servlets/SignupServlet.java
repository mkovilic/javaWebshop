package servlets;

import model.Customer;
import repo.DataSourceSingleton;
import repo.IRepo;
import repo.RepoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "SignupServlet", urlPatterns = {
        "/signup"})
public class SignupServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        String adress = req.getParameter("adress");
        String email = req.getParameter("email");
        String password = req.getParameter("password");


        IRepo repo = RepoFactory.getRepo();

        if (repo.checkEmail(email)){
            resp.sendRedirect("signup.jsp");

        }else{
            Customer c = new Customer(firstname, lastname,
                    adress, email, password);
            repo.insertCustomer(c);

            resp.sendRedirect("index.jsp");
        }

    }
}
