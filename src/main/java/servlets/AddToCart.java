package servlets;

import model.Cart;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BagAddOne", urlPatterns = {"/add"})
public class AddToCart extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idProduct=Integer.parseInt(req.getParameter("idProduct"));
        List<Cart> cartSession = (List<Cart>) req.getSession().getAttribute("cartSession");
        for (Cart cart : cartSession){
            if (cart.getProduct().getProductId() == idProduct)
            {
                int quantity = cart.getQuantity();
                quantity++;
                cart.setQuantity(quantity);
            }
        }
        float sum = utils.Utils.calculateTotalSum(cartSession);
        req.getSession().setAttribute("sum",sum);
        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(
                        "/cart.jsp");
        rd.forward(req, resp);
    /*    resp.sendRedirect("cart.jsp");*/
    }
}
