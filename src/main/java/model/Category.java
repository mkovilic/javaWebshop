package model;

public class Category {
    private int CategoryId;
    private String Title;

    public Category(int categoryId, String title) {
        CategoryId = categoryId;
        Title = title;
    }

    public Category(String title) {
        Title = title;
    }

    public int getCategoryId() {
        return CategoryId;
    }

    public String getTitle() {
        return Title;
    }

    @Override
    public String toString() {
        return Title;
    }
}
