package com.company;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Sugar {
    static MethotsForTableWareHouse wareHouse = new MethotsForTableWareHouse();
    static ResultSet rs;
    private String productName = wareHouse.getProductName("сахар");
    private String quantity = wareHouse.getProductQuantity("сахар");
    private String price = wareHouse.getProductPrice("сахар");
    private String productkod = wareHouse.getProductKod("сахар");

    public Sugar() throws SQLException {
    }

    String getSmallInfoProduct() throws SQLException {
        String result = "";
        rs = ConnectSqlServer.stmt.executeQuery("SELECT * FROM warehouse WHERE productName = '" + productName + "'");
        while (rs.next()) {
            String getProductName = rs.getString("productName");
            String getPrice = rs.getString("price");
            int quantitPurchase = MethotsForTableWareHouse.countSugar+1;
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
