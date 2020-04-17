package servlets;

import repo.IRepo;
import repo.RepoFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductsServlet", urlPatterns = {
        "/products"})
public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IRepo iRepo = RepoFactory.getRepo();

        req.getSession().setAttribute("products",
                iRepo.getAllProducts());

        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(
                        "/products.jsp");
        rd.forward(req, resp);

    }
}
