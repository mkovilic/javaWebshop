package servlets;

import model.Cart;
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

@WebServlet (name = "AddBagServlet", urlPatterns = {"/cart"})
public class CartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float sum;
        List<Cart> cartSessionNew = new ArrayList<>();
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
        Cart cart = new Cart(p,1);
        List<Cart> cartSession= (List<Cart>) req.getSession().getAttribute("cartSession");
        boolean alreadyInBag = true;

        if (cartSession !=null){
            for (Cart b : cartSession){
                if (b.getProduct().getProductId()==idProduct){
                    int quantity = b.getQuantity();
                    quantity++;
                    b.setQuantity(quantity);
                    alreadyInBag = false;
                }
            }
            if (alreadyInBag){
                cartSession.add(cart);
            }
            req.getSession().setAttribute("cartSession",cartSession);
            sum=utils.Utils.calculateTotalSum(cartSession);
        }
        else {
            cartSessionNew.add(cart);
            req.getSession().setAttribute("cartSession",cartSessionNew);
            sum=utils.Utils.calculateTotalSum(cartSessionNew);
        }
        if (cartSession==null && cartSessionNew==null){
            sum= 0;
        }
        req.getSession().setAttribute("sum",sum);
        resp.sendRedirect("index.jsp");
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float sum;
        List<Cart> cartSessionNew = new ArrayList<>();
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
        Cart cart = new Cart(p,1);
        List<Cart> cartSession= (List<Cart>) req.getSession().getAttribute("cartSession");
        boolean alreadyInBag = true;

        if (cartSession !=null){
            for (Cart b : cartSession){
                if (b.getProduct().getProductId()==idProduct){
                    int quantity = b.getQuantity();
                    quantity++;
                    b.setQuantity(quantity);
                    alreadyInBag = false;
                }
            }
            if (alreadyInBag){
                cartSession.add(cart);
            }
            req.getSession().setAttribute("cartSession",cartSession);
            sum=utils.Utils.calculateTotalSum(cartSession);
        }
        else {
            cartSessionNew.add(cart);
            req.getSession().setAttribute("cartSession",cartSessionNew);
            sum=utils.Utils.calculateTotalSum(cartSessionNew);
        }
        if (cartSession==null && cartSessionNew==null){
            sum= 0;
        }
        req.getSession().setAttribute("sum",sum);
        resp.sendRedirect("index.jsp");
    }
}
