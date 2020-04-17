package servlets;

import model.Bill;
import model.Item;
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
import java.util.List;

@WebServlet (name = "ViewBillServlet", urlPatterns = {
        "/viewBill"})
public class ViewBillServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int billId = Integer.parseInt(req.getParameter(
                "billId"));
        IRepo iRepo = RepoFactory.getRepo();
        Bill bill;
        bill=iRepo.getBill(billId);
        List<Item> items = iRepo.getItemsForBill(billId);
        List<Product> products=iRepo.getAllProducts();

        req.setAttribute("bill",bill);
        req.setAttribute("items",items);
        req.setAttribute("productsBill",products);

        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(
                        "/bill.jsp");
        rd.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int billId = Integer.parseInt(req.getParameter(
                "billId"));
        IRepo iRepo = RepoFactory.getRepo();
        Bill bill=iRepo.getBill(billId);
        List<Item> items = iRepo.getItemsForBill(billId);
        List<Product> products=iRepo.getAllProducts();

        req.setAttribute("bill",bill);
        req.setAttribute("items",items);
        req.setAttribute("productsBill",products);

        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(
                        "/bill.jsp");
        rd.forward(req,resp);
    }
}
