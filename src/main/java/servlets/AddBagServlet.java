package servlets;

import model.BagItem;
import model.Product;
import repo.IRepo;
import repo.RepoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet (name = "AddBagServlet", urlPatterns = {"/addBag"})
public class AddBagServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float sum;
        List<BagItem> bagSessionNew = new ArrayList<>();
        int idProduct = Integer.parseInt(req.getParameter("idProduct"));
        Product p;
        IRepo repo = RepoFactory.getRepo();
        try {
            p=repo.getProduct(idProduct);
        }catch (Exception e)
        {
            p=null;
            e.printStackTrace();
        }
        BagItem bagItem = new BagItem(p,1);
        List<BagItem> bagSession= (List<BagItem>) req.getSession().getAttribute("bagSession");
        boolean alreadyInBag = true;

        if (bagSession !=null){
            for (BagItem b : bagSession){
                if (b.getProduct().getProductId()==idProduct){
                    int quantity = b.getQuantity();
                    quantity++;
                    b.setQuantity(quantity);
                    alreadyInBag = false;
                }
            }
            if (alreadyInBag){
                bagSession.add(bagItem);
            }
            req.getSession().setAttribute("bagSession",bagSession);
            sum=utils.Utils.calculateTotalSum(bagSession);
        }
        else {
            bagSessionNew.add(bagItem);
            req.getSession().setAttribute("bagSession",bagSessionNew);
            sum=utils.Utils.calculateTotalSum(bagSessionNew);
        }
        if (bagSession==null && bagSessionNew==null){
            sum= 0;
        }
        req.getSession().setAttribute("sum",sum);
        resp.sendRedirect("index.jsp");
    }
}
