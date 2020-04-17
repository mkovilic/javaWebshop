package model;

import java.util.Calendar;
import java.util.Date;

public class Bill {
    private int BillId;
    private String BillDate;
    private int CustomerId;
    private int PaymentMethodId;

    public Bill(int billId, String billDate, int customerId, int paymentMethodId) {
        BillId = billId;
        BillDate = billDate;
        CustomerId = customerId;
        PaymentMethodId = paymentMethodId;
    }

    public Bill(String billDate, int customerId, int paymentMethodId) {
        BillDate = billDate;
        CustomerId = customerId;
        PaymentMethodId = paymentMethodId;
    }

    public int getBillId() {
        return BillId;
    }

    public void setBillId(int billId) {
        BillId = billId;
    }

    public String getBillDate() {
        return BillDate;
    }

    public void setBillDate(String billDate) {
        BillDate = billDate;
    }

    public int getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(int customerId) {
        CustomerId = customerId;
    }

    public int getPaymentMethodId() {
        return PaymentMethodId;
    }

    public void setPaymentMethodId(int paymentMethodId) {
        PaymentMethodId = paymentMethodId;
    }

    public String toStringBill(){
        String s="";
        Calendar calendar=Calendar.getInstance();
        Date date=new Date();
        calendar.setTime(date);

        String year=String.valueOf(calendar.get(Calendar.YEAR));
        String month=String.valueOf(calendar.get(Calendar.MONTH));
        String day=String.valueOf(calendar.get(Calendar.DAY_OF_MONTH));

        s=year+"-"+month+"-"+day;

        return s;
    }

    @Override
    public String toString() {
        return "Bill{" + "BillDate=" + BillDate + ", CustomerID=" + CustomerId + ", PaymentMethodID=" + PaymentMethodId + '}';
    }
}
