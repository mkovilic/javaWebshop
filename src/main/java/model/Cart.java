package model;

public class Cart {
    private Product product;
    private int Quantity;

    public Cart(Product product, int Quantity) {
        this.product = product;
        this.Quantity = Quantity;
    }

    public Cart() {
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

}
