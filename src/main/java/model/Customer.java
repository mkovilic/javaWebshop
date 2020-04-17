package model;

public class Customer {
    private int CustomerId;
    private String FirstName;
    private String LastName;
    private String Address;
    private String Email;
    private String CustomerPassword;

    public Customer(String firstName, String lastName, String address, String email, String customerPassword) {
        FirstName = firstName;
        LastName = lastName;
        Address = address;
        Email = email;
        CustomerPassword = customerPassword;
    }

    public Customer(int customerId, String firstName, String lastName, String address, String email, String customerPassword) {
        CustomerId = customerId;
        FirstName = firstName;
        LastName = lastName;
        Address = address;
        Email = email;
        CustomerPassword = customerPassword;
    }

    public int getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(int customerId) {
        CustomerId = customerId;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String lastName) {
        LastName = lastName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getCustomerPassword() {
        return CustomerPassword;
    }

    public void setCustomerPassword(String customerPassword) {
        CustomerPassword = customerPassword;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "CustomerId=" + CustomerId +
                ", FirstName='" + FirstName + '\'' +
                ", LastName='" + LastName + '\'' +
                ", Address='" + Address + '\'' +
                ", Email='" + Email + '\'' +
                ", CustomerPassword='" + CustomerPassword + '\'' +
                '}';
    }
}
