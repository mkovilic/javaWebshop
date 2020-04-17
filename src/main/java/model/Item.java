package model;

public class Item {
    private int IDItem;
    private int ProductId;
    private int BillId;
    private int Quantity;

    public Item(int productId, int billId, int quantity) {
        ProductId = productId;
        BillId = billId;
        Quantity = quantity;
    }

    public Item(int IDItem, int productId, int billId, int quantity) {
        this.IDItem = IDItem;
        ProductId = productId;
        BillId = billId;
        Quantity = quantity;
    }

    public int getIDItem() {
        return IDItem;
    }

    public void setIDItem(int IDItem) {
        this.IDItem = IDItem;
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int productId) {
        ProductId = productId;
    }

    public int getBillId() {
        return BillId;
    }

    public void setBillId(int billId) {
        BillId = billId;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }

    @Override
    public String toString() {
        return "Item{" + "ProductID=" + ProductId + ", " +
                "BillID=" + BillId + ", Quantity=" + Quantity + '}';
    }
}
