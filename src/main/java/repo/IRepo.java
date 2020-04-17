package repo;

import model.*;

import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

public interface IRepo {

    void insertCustomer(Customer c);
    List<Customer> getAllCustomers();
    Customer getCustomer(int id);
    boolean checkCustomer(String email, String password);
    boolean checkEmail(String email);
    List<Category> getAllCategory();
    List<Product> getAllProducts();
    Product getProduct(int id);
    List<PaymentMethod> getAllPaymentMethods();
    List<Bill> getAllBills();
    void insertBill(Bill b, List<BagItem> bagItems);
    Bill getBill (int id);
    List<Bill> getAllBillsForCustomer(int id);
    List<Item> getItemsForBill(int id);
    void insertItem(Item i);
    List<LogInfo> getAllLogInfos();
    void insertLogInfo(LogInfo logInfo);

}
