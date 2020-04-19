package servlets;

import model.BagItem;
import utils.Utils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CartRemoveOne", urlPatterns = {"/remove"})
public class CartRemoveOne extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int idProduct = Integer.parseInt(req.getParameter("idProduct"));
        List<BagItem> bagSession =
                (List<BagItem>) req.getSession().getAttribute("bagSession");
        BagItem bRemove = null;
        for (BagItem bagItem : bagSession) {
            if (bagItem.getProduct().getProductId() == idProduct) {
                if (bagItem.getQuantity() > 1) {
                    int quantity = bagItem.getQuantity();
                    quantity--;
                    bagItem.setQuantity(quantity);

                } else {
                        bRemove=bagItem;

                    }
                }
            }

        bagSession.remove(bRemove);
        req.getSession().setAttribute("bagSession",bagSession);
        float sum= Utils.calculateTotalSum(bagSession);
        req.getSession().setAttribute("sum",sum);
        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(
                        "/bag.jsp");
        rd.forward(req, resp);
/*
        resp.sendRedirect("bag.jsp");
*/
    }

}
