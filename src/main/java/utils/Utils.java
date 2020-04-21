package utils;

import model.Cart;
import model.Customer;
import model.LogInfo;
import repo.IRepo;
import repo.RepoFactory;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Utils {
    public static float calculateTotalSum(List<Cart> carts) {
        float sum= 0;
        if (carts != null) {
            for (Cart cart : carts) {
                sum += cart.getProduct().getPrice() * cart.getQuantity();
            }
        }

        return sum;
    }
    public static void createLog(String username, HttpServletRequest request){
        String ipAdress=request.getRemoteAddr();
        String date=getTodaysDate();
        IRepo repo=RepoFactory.getRepo();
        int c=-1;
        for (Customer customer : repo.getAllCustomers()) {
            if (customer.getEmail().equals(username)) {
                c=customer.getCustomerId();
            }
        }
        LogInfo logInfo=new LogInfo(c, date, ipAdress);
        try {
            repo.insertLogInfo(logInfo);
        } catch (Exception e) {

        }
    }

    public static boolean usernameUnique(String email) {
        IRepo repo = RepoFactory.getRepo();

        List<Customer> customers = repo.getAllCustomers();
        for (Customer customer : customers) {
            if (customer.getEmail().equals(email)) {
                return false;
            }
        }
        return true;
    }

    public static Customer getCustomerFromEmail(String email) {
        Customer c = null;
        IRepo repo = RepoFactory.getRepo();
        List<Customer> customers = repo.getAllCustomers();
        for (Customer customer : customers) {
            if (customer.getEmail().equals(email)) {
                return customer;
            }
        }
        c.setFirstName("ime");
        return c;
    }

    public static String getTodaysDate() {
        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        return sdf.format(date);
    }


}
