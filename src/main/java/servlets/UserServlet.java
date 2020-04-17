package servlets;

import model.Bill;
import model.Customer;
import repo.IRepo;
import repo.RepoFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (name = "UserServlet", urlPatterns = {"/user"})
public class UserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        IRepo repo = RepoFactory.getRepo();

        Customer c = utils.Utils.getCustomerFromEmail(username);
        List<Bill> bills = repo.getAllBillsForCustomer(c.getCustomerId());
        Customer customer = new Customer(c.getCustomerId(),c.getFirstName(),c.getLastName(),c.getAddress(),c.getEmail(),c.getCustomerPassword());

        req.getSession().setAttribute("bills",bills);
        req.getSession().setAttribute("customer",customer);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/user.jsp");
        rd.forward(req,resp);
    }
}
