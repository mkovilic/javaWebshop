package model;

public class Product {
    private int ProductId;
    private String Title;
    private String Brand;
    private String About;
    private float Price;
    private String Img;
    private int CategoryId;

    public Product(String title, String brand, String about, float price, String img, int categoryId) {
        Title = title;
        Brand = brand;
        About = about;
        Price = price;
        Img = img;
        CategoryId = categoryId;
    }

    public Product(int productId, String title, String brand, String about, float price, String img, int categoryId) {
        ProductId = productId;
        Title = title;
        Brand = brand;
        About = about;
        Price = price;
        Img = img;
        CategoryId = categoryId;
    }

    public int getProductId() {
        return ProductId;
    }

    public void setProductId(int productId) {
        ProductId = productId;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public String getBrand() {
        return Brand;
    }

    public void setBrand(String brand) {
        Brand = brand;
    }

    public String getAbout() {
        return About;
    }

    public void setAbout(String about) {
        About = about;
    }

    public float getPrice() {
        return Price;
    }

    public void setPrice(float price) {
        Price = price;
    }

    public String getImg() {
        return Img;
    }

    public void setImg(String img) {
        Img = img;
    }

    public int getCategoryId() {
        return CategoryId;
    }

    public void setCategoryId(int categoryId) {
        CategoryId = categoryId;
    }

    @Override
    public String toString() {
        return "Product{" +
                "ProductId=" + ProductId +
                ", Title='" + Title + '\'' +
                ", Brand='" + Brand + '\'' +
                ", About='" + About + '\'' +
                ", Price=" + Price +
                ", Img='" + Img + '\'' +
                ", CategoryId=" + CategoryId +
                '}';
    }
}
