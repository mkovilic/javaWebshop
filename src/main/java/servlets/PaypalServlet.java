package servlets;

import model.Cart;
import model.Bill;
import model.Customer;
import repo.IRepo;
import repo.RepoFactory;
import utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (name = "PaypalServlet", urlPatterns = {"/paypal"})
public class PaypalServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IRepo iRepo= RepoFactory.getRepo();

        List<Cart> bagSession=
                (List<Cart>) req.getSession().getAttribute("bagSession");
        String email= (String) req.getSession().getAttribute(
                "username");
        Customer c = Utils.getCustomerFromEmail(email);
        String date = Utils.getTodaysDate();

        Bill b= new Bill(date,c.getCustomerId(),1);
        iRepo.insertBill(b,bagSession);

        if (req.getSession().getAttribute("bagSession")!=null){
            req.getSession().removeAttribute("bagSession");
        }
        if (req.getSession().getAttribute("sum")!=null){
            req.getSession().removeAttribute("sum");
        }
        resp.sendRedirect("index.jsp");

    }
}
