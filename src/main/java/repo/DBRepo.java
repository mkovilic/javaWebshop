package repo;

import model.*;

import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DBRepo implements IRepo {
    private static final String INSERT_CUSTOMER="{ CALL  INSERT_CUSTOMER (?,?,?,?,?)}";
    private static final String GET_ALL_CUSTOMERS="{ CALL  GET_ALL_CUSTOMERS ()}";
    private static final String GET_CUSTOMER="{ CALL  GET_CUSTOMER (?)}";

    private static final String GET_ALL_CATEGORY="{ CALL  GET_ALL_CATEGORY ()}";

    private static final String GET_ALL_PRODUCTS="{ CALL  GET_ALL_PRODUCTS ()}";
    private static final String GET_PRODUCT="{ CALL  GET_PRODUCT (?)}";

    private static final String GET_ALL_PAYMENT_METHODS="{ CALL  GET_ALL_PAYMENT_METHODS ()}";

    private static final String GET_ALL_BILLS="{ CALL  GET_ALL_BILLS ()}";
    private static final String INSERT_BILL="{ CALL  INSERT_BILL (?,?,?,?)}";
    private static final String GET_BILL="{ CALL  GET_BILL (?)}";
    private static final String GET_BILLS_FOR_CUSTOMER="{ CALL  GET_BILLS_FOR_CUSTOMER (?)}";

    private static final String GET_ITEMS_FOR_BILL="{ CALL  GET_ITEMS_FOR_BILL (?)}";
    private static final String INSERT_ITEM="{ CALL  INSERT_ITEM (?,?,?)}";

    private static final String GET_ALL_LOGINFO="{ CALL  GET_ALL_LOGINFO ()}";
    private static final String INSERT_LOGINFO="{ CALL  INSERT_LOGINFO (?,?,?)}";

    @Override
    public void insertCustomer(Customer c) {
        DataSource dataSource=DataSourceSingleton.getInstance();
        try(Connection con = dataSource.getConnection();
            CallableStatement statement=con.prepareCall(INSERT_CUSTOMER)) {
            statement.setString(1,c.getFirstName());
            statement.setString(2,c.getLastName());
            statement.setString(3,c.getAddress());
            statement.setString(4,c.getEmail());
            statement.setString(5,c.getCustomerPassword());
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public List<Customer> getAllCustomers() {
        List<Customer> customers = new ArrayList<>();
        DataSource dataSource = DataSourceSingleton.getInstance();
        try {
        Connection con=dataSource.getConnection();
        CallableStatement statement = con.prepareCall(GET_ALL_CUSTOMERS);
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next()){

                customers.add(new Customer(resultSet.getInt("IDCustomer"),
                        resultSet.getString("FirstName"),
                        resultSet.getString("LastName"),
                        resultSet.getString("Adress"),
                        resultSet.getString("Email"),
                        resultSet.getString("CustomerPassword")));

        }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public Customer getCustomer(int id) {
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(GET_CUSTOMER)){
            stmt.setInt(1, id);
            try (ResultSet resultSet=stmt.executeQuery()){
                if (resultSet.next()) {
                    return new Customer(
                            resultSet.getInt("IDCustomer"),
                            resultSet.getString("FirstName"),
                            resultSet.getString("LastName"),
                            resultSet.getString("Adress"),
                            resultSet.getString("Email"),
                            resultSet.getString("CustomerPassword")
                    );
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
       }

        @Override
    public boolean checkCustomer(String email, String password) {
            List<Customer> customers=getAllCustomers();
            for (Customer customer : customers) {
                if (customer.getEmail().equals(email) && customer.getCustomerPassword().equals(password)) {
                    return true;
                }
            }
            return false;    }

    @Override
    public List<Category> getAllCategory() {
        List<Category> categorys=new ArrayList<>();
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(GET_ALL_CATEGORY);
             ResultSet resultSet=stmt.executeQuery()){
            while (resultSet.next()) {
                categorys.add(
                        new Category(
                                resultSet.getInt("IDCategory"),
                                resultSet.getString("Title")
                        ));
            }
            return categorys;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return categorys;
    }


    @Override
    public List<Product> getAllProducts() {
        List<Product> products=new ArrayList<>();
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(GET_ALL_PRODUCTS);
             ResultSet resultSet=stmt.executeQuery()){
            while (resultSet.next()) {
                products.add(
                        new Product(
                                resultSet.getInt("IDProduct"),
                                resultSet.getString("Title"),
                                resultSet.getString("Brand"),
                                resultSet.getString("About"),
                                resultSet.getFloat("Price"),
                                resultSet.getString("Img"),
                                resultSet.getInt(
                                        "CatgoryID"))
                );
            }
            return products;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return products;
    }

    @Override
    public Product getProduct(int id) {
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(GET_PRODUCT);){
            stmt.setInt(1, id);
            try (ResultSet resultSet=stmt.executeQuery()){
                if (resultSet.next()){
                    return new Product(
                            resultSet.getInt("IDProduct"),
                            resultSet.getString("Title"),
                            resultSet.getString("Brand"),
                            resultSet.getString("About"),
                            resultSet.getFloat("Price"),
                            resultSet.getString("Img"),
                            resultSet.getInt("CatgoryID"));
                }} catch (Exception e) {
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<PaymentMethod> getAllPaymentMethods() {
        List<PaymentMethod> paymentMethods=new ArrayList<>();
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(GET_ALL_PAYMENT_METHODS);
             ResultSet resultSet=stmt.executeQuery()){
            while (resultSet.next()) {
                paymentMethods.add(
                        new PaymentMethod(
                                resultSet.getInt("IDPaymentMethod"),
                                resultSet.getString("PaymentMethodName"))
                );
            }
            return paymentMethods;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return paymentMethods;
    }

    @Override
    public List<Bill> getAllBills() {
        List<Bill> bills=new ArrayList<>();
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(GET_ALL_BILLS);
             ResultSet resultSet=stmt.executeQuery()){
            while (resultSet.next()) {
                bills.add(
                        new Bill(
                                resultSet.getInt("IDBill"),
                                resultSet.getString("BillDate"),
                                resultSet.getInt("CustomerID"),
                                resultSet.getInt("PaymentMethodID"))
                );
            }
            return bills;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bills;
    }

    @Override
    public void insertBill(Bill b, List<BagItem> bagItems) {
        int billID;

        DataSource dataSource = DataSourceSingleton.getInstance();
        try (Connection con = dataSource.getConnection();

             CallableStatement stmt = con.prepareCall(INSERT_BILL)) {
            stmt.setString(1, b.getBillDate());
            stmt.setInt(2, b.getCustomerId());
            stmt.setInt(3, b.getPaymentMethodId());
            stmt.registerOutParameter(4, Types.INTEGER);

            stmt.executeUpdate();
            billID = stmt.getInt(4);

            try(CallableStatement stmt2 = con.prepareCall(INSERT_ITEM)){
                for (BagItem bi : bagItems) {
                    stmt2.setInt(1, bi.getProduct().getProductId());
                    stmt2.setInt(2, billID);
                    stmt2.setInt(3, bi.getQuantity());
                    stmt2.executeUpdate();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override
    public Bill getBill(int id) {
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(GET_BILL)){
            stmt.setInt(1, id);
            try (ResultSet resultSet=stmt.executeQuery()){
                return new Bill(
                        resultSet.getInt("IDBill"),
                        resultSet.getString("BillDate"),
                        resultSet.getInt("CustomerID"),
                        resultSet.getInt("PaymentMethodID"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<Bill> getAllBillsForCustomer(int id) {
        List<Bill> bills=new ArrayList<>();
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(GET_BILLS_FOR_CUSTOMER)){
            stmt.setInt(1, id);
            try (ResultSet resultSet=stmt.executeQuery()){
                while (resultSet.next()) {
                    bills.add(
                            new Bill(
                                    resultSet.getInt("IDBill"),
                                    resultSet.getString("BillDate"),
                                    resultSet.getInt("CustomerID"),
                                    resultSet.getInt("PaymentMethodID"))
                    );
                }
                return bills;
            }}catch (Exception e) {
            e.printStackTrace();
        }
        return bills;
    }

    @Override
    public List<Item> getItemsForBill(int id) {
        List<Item> items=new ArrayList<>();
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(GET_ITEMS_FOR_BILL)){
            stmt.setInt(1, id);
            try (ResultSet resultSet=stmt.executeQuery()){
                while (resultSet.next()) {
                    items.add(
                            new Item(
                                    resultSet.getInt("IDItem"),
                                    resultSet.getInt("ProductID"),
                                    resultSet.getInt("BillID"),
                                    resultSet.getInt("Quantity"))
                    );
                }
                return items;
            } catch (Exception e) {
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return items;    }

    @Override
    public void insertItem(Item i) {
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(INSERT_ITEM)){
            stmt.setInt(1, i.getProductId());
            stmt.setInt(2, i.getBillId());
            stmt.setInt(3, i.getQuantity());

            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<LogInfo> getAllLogInfos() {
        List<LogInfo> logInfos=new ArrayList<>();
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(GET_ALL_LOGINFO);
             ResultSet resultSet=stmt.executeQuery()){
            while (resultSet.next()) {
                logInfos.add(
                        new LogInfo(
                                resultSet.getInt("IDLogInfo"),
                                resultSet.getInt("CustomerID"),
                                resultSet.getString("LogDate"),
                                resultSet.getString("IPAdress"))
                );
            }
            return logInfos;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return logInfos;    }

    @Override
    public void insertLogInfo(LogInfo logInfo) {
        DataSource dataSource=DataSourceSingleton.getInstance();
        try (Connection con=dataSource.getConnection();
             CallableStatement stmt=con.prepareCall(INSERT_LOGINFO)){
            stmt.setInt(1, logInfo.getCustomerId());
            stmt.setString(2, logInfo.getLogDate());
            stmt.setString(3, logInfo.getIPAdress());

            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override
    public boolean checkEmail(String email) {
        List<Customer> customers=getAllCustomers();
        for (Customer customer : customers) {
            if (customer.getEmail().equals(email)) {
                return true;
            }
        }
        return false;    }

}
