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

@WebServlet (name = "ViewCategoryServlet", urlPatterns =
        {"/viewCategory"})
public class ViewCategoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IRepo iRepo= RepoFactory.getRepo();

        int idCategory=
                Integer.parseInt(req.getParameter(
                        "idCategory"));
        List <Product> categoryProducts= new ArrayList<>();
        List <Product> allProduct= iRepo.getAllProducts();
        for (Product p : allProduct){
            if (p.getCategoryId()==idCategory){
                categoryProducts.add(p);
            }
        }
        req.getSession().setAttribute("categoryProducts",
                categoryProducts);
        RequestDispatcher rd=
                getServletContext().getRequestDispatcher(
                        "/categoryProducts.jsp");
        rd.forward(req,resp);
    }

}
