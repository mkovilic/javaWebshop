package servlets;

import model.Customer;
import model.LogInfo;
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

@WebServlet(name = "LogsServlet", urlPatterns = {"/logs"})
public class LogsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IRepo repo = RepoFactory.getRepo();
        List<LogInfo> logInfos = repo.getAllLogInfos();
        List<Customer> customers = repo.getAllCustomers();

        req.getSession().setAttribute("logs", logInfos);
        req.getSession().setAttribute("customers", customers);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/logs.jsp");
        rd.forward(req, resp);
    }
}
