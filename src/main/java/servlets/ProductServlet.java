package servlets;

import model.Product;
import repo.IRepo;
import repo.RepoFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet (name = "ProductServlet", urlPatterns = {"/product"})
public class ProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req,
    HttpServletResponse resp) throws ServletException, IOException {
        int idProduct = Integer.parseInt(req.getParameter("idProduct"));

        Product p;
        IRepo iRepo = RepoFactory.getRepo();

        try {
            p=iRepo.getProduct(idProduct);

        }catch (Exception e){
            p=null;
            e.printStackTrace();
        }

        req.getSession().setAttribute("product",p);
        RequestDispatcher rd= getServletContext().getRequestDispatcher(
                "/product.jsp");
        rd.forward(req,resp);


    }
    @Override
    protected void doGet(HttpServletRequest req,
                          HttpServletResponse resp) throws ServletException, IOException {
        int idProduct = Integer.parseInt(req.getParameter("idProduct"));

        Product p;
        IRepo iRepo = RepoFactory.getRepo();

        try {
            p=iRepo.getProduct(idProduct);

        }catch (Exception e){
            p=null;
            e.printStackTrace();
        }

        req.getSession().setAttribute("product",p);
        RequestDispatcher rd= getServletContext().getRequestDispatcher(
                "/product.jsp");
        rd.forward(req,resp);


    }
}
