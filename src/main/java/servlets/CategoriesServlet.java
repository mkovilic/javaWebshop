package servlets;

import model.Category;
import repo.IRepo;
import repo.RepoFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (name = "CategoriesServlet",urlPatterns = {
        "/categories"})
public class CategoriesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IRepo iRepo = RepoFactory.getRepo();
        List<Category> categories = iRepo.getAllCategory();
        req.getSession().setAttribute("categories",categories);

        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(
                        "/category.jsp");
        rd.forward(req,resp);
    }
}
