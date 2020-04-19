package servlets;

import model.BagItem;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BagAddOne", urlPatterns = {"/add"})
public class BagAddOne extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idProduct=Integer.parseInt(req.getParameter("idProduct"));
        List<BagItem> bagSession = (List<BagItem>) req.getSession().getAttribute("bagSession");
        for (BagItem bagItem: bagSession){
            if (bagItem.getProduct().getProductId() == idProduct)
            {
                int quantity = bagItem.getQuantity();
                quantity++;
                bagItem.setQuantity(quantity);
            }
        }
        float sum = utils.Utils.calculateTotalSum(bagSession);
        req.getSession().setAttribute("sum",sum);
        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(
                        "/bag.jsp");
        rd.forward(req, resp);
    /*    resp.sendRedirect("bag.jsp");*/
    }
}
