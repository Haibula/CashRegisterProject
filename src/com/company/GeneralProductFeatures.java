package com.company;

public abstract class GeneralProductFeatures {
    private String productName;
    private String quantity;
    private String price;
    private int kodProduct;

    public GeneralProductFeatures() {

    }

    public GeneralProductFeatures(String productName, String quantity, String price, int kodProduct) {
        this.productName = productName;
        this.quantity = quantity;
        this.price = price;
        this.kodProduct = kodProduct;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getKodProduct() {
        return kodProduct;
    }

    public void setKodProduct(int kodProduct) {
        this.kodProduct = kodProduct;
    }

    @Override
    public String toString() {
        return "ProductData{" +
                "productName='" + productName + '\'' +
                ", quantity='" + quantity + '\'' +
                ", price='" + price + '\'' +
                ", kodProduct=" + kodProduct +
                '}';
    }
}
