package servlets;

import model.PaymentMethod;
import repo.RepoFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (name = "CheckoutServlet", urlPatterns = {"/checkout"})
public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<PaymentMethod> paymentMethods=
                RepoFactory.getRepo().getAllPaymentMethods();
        req.getSession().setAttribute("paymentMethods",paymentMethods);
        RequestDispatcher rd=
                getServletContext().getRequestDispatcher(
                        "/checkout.jsp" );
        rd.forward(req,resp);
    }
}
