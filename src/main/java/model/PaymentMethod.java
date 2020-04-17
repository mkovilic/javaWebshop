package model;

public class PaymentMethod {
    private int PaymentMethodId;
    private String PaymentMethodName;

    public PaymentMethod(String paymentMethodName) {
        PaymentMethodName = paymentMethodName;
    }

    public PaymentMethod(int paymentMethodId, String paymentMethodName) {
        PaymentMethodId = paymentMethodId;
        PaymentMethodName = paymentMethodName;
    }

    public int getPaymentMethodId() {
        return PaymentMethodId;
    }

    public void setPaymentMethodId(int paymentMethodId) {
        PaymentMethodId = paymentMethodId;
    }

    public String getPaymentMethodName() {
        return PaymentMethodName;
    }

    public void setPaymentMethodName(String paymentMethodName) {
        PaymentMethodName = paymentMethodName;
    }

    @Override
    public String toString() {
        return "PaymentMethod{" +
                "PaymentMethodId=" + PaymentMethodId +
                ", PaymentMethodName='" + PaymentMethodName + '\'' +
                '}';
    }
}
