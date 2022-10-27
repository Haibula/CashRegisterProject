package com.company;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Bread {
    static MethotsForTableWareHouse wareHouse = new MethotsForTableWareHouse();
    static ResultSet rs;
    private String productName = wareHouse.getProductName("хлеб");
    private String quantity = wareHouse.getProductQuantity("хлеб");
    private String price = wareHouse.getProductPrice("хлеб");
    private String productkod = wareHouse.getProductKod("хлеб");

    public Bread() throws SQLException {
    }

    String getSmallInfoProduct() throws SQLException {
        String result = "";
        rs = ConnectSqlServer.stmt.executeQuery("SELECT * FROM warehouse WHERE productName = '" + productName + "'");
        while (rs.next()) {
            String getProductName = rs.getString("productName");
            String getPrice = rs.getString("price");
            int quantitPurchase = MethotsForTableWareHouse.countBread+1;
            System.out.println(getProductName + " " + getPrice + " " + quantitPurchase + " шт");
            result = getProductName + " " + getPrice + " " + quantitPurchase + " шт";
        }
        return result;
    }

    void removeChangeQuantity(int countBread) throws SQLException { // посмотри еще раз
        rs = ConnectSqlServer.stmt.executeQuery("SELECT quantity FROM warehouse WHERE productName = '" + productName + "'");
        String newQuantity = "";
        while (rs.next()) {
            String getQiantityProduct = rs.getString("quantity");
            //System.out.println(getQiantityProduct);
            String isDigitValues = getIsDigit(getQiantityProduct);
            //System.out.println(isDigitValues);
            int valueForArithmeticOperations = Integer.parseInt(isDigitValues) - countBread;
            newQuantity = String.valueOf(valueForArithmeticOperations) + " шт";
            //System.out.println(newQuantity);
        }
        ConnectSqlServer.stmt.executeUpdate("UPDATE warehouse SET quantity = '" + newQuantity + "' WHERE productName = '" + productName + "'");
    }

    void addChangeQuantity(int countBread) throws SQLException { // посмотри еще раз
        rs = ConnectSqlServer.stmt.executeQuery("SELECT quantity FROM warehouse WHERE productName = '" + productName + "'");
        String newQuantity = "";
        while (rs.next()) {
            String getQiantityProduct = rs.getString("quantity");
            //System.out.println(getQiantityProduct);
            String isDigitValues = getIsDigit(getQiantityProduct);
            //System.out.println(isDigitValues);
            int valueForArithmeticOperations = Integer.parseInt(isDigitValues) + countBread;
            newQuantity = String.valueOf(valueForArithmeticOperations) + " шт";
            //System.out.println(newQuantity);
        }
        ConnectSqlServer.stmt.executeUpdate("UPDATE warehouse SET quantity = '" + newQuantity + "' WHERE productName = '" + productName + "'");
    }


    public String getIsDigit(String value) {
        String isDiginValue = "";
        char[] ch = value.toCharArray();
        for (int i = 0; i < ch.length; i++) {
            if (Character.isDigit(ch[i])) {
                isDiginValue += String.valueOf(ch[i]);
            }
        }
        return isDiginValue;
    }

    public String getProductName() {
        return productName;
    }

    public String getQuantity() {
        return quantity;
    }

    public String getPrice() {
        return price;
    }

    public String getProductKod() {
        return productkod;
    }

}
