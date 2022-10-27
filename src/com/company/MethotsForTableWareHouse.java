package com.company;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;

public class MethotsForTableWareHouse {
    static ConnectSqlServer connectSqlServer = Main.connectSqlServer;
    static ResultSet rs;
    static BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));


    static int countEggs = 0;
    static int countBread = 0;
    static int countSugar = 0;
    static int countMilk = 0;
    static int countGeneralSum = 0;

    // Milk productNum - 4665303537316
    // Eggs productNum - 4031626710369
    // Bread productNum - 6941755212635
    // Sugar productNum - 4607001779797


    void insertInto(String productName) throws SQLException { // заполняет поля в базеданных
        PreparedStatement statement = ConnectSqlServer.con.prepareStatement("INSERT INTO" + " " + connectSqlServer.getselectedTable() + "(productName) VALUES (?)");
        //   statement.setInt();
        statement.setString(1, productName);
        statement.executeUpdate();
    }

    void insertInto(String productName, String quantity) throws SQLException { // заполняет поля в базеданных
        NumberFormat formatter = NumberFormat.getInstance(); // конвертирует число в денежный формат
        String quantityString = formatter.format(Integer.parseInt(quantity));

        PreparedStatement statement = ConnectSqlServer.con.prepareStatement("INSERT INTO" + " " + connectSqlServer.getselectedTable() + "(productName,quantity) VALUES (?,?)");
        //   statement.setInt();
        statement.setString(1, productName);
        statement.setString(2, quantityString + "шт");
        statement.executeUpdate();
    }

    void insertInto(String productName, String quantity, String price) throws SQLException { // заполняет поля в базеданных
        NumberFormat formatter = NumberFormat.getInstance(); // конвертирует число в денежный формат
        String moneyString = formatter.format(Integer.parseInt(price));
        String quantityString = formatter.format(Integer.parseInt(quantity));

        PreparedStatement statement = ConnectSqlServer.con.prepareStatement("INSERT INTO" + " " + connectSqlServer.getselectedTable() + "(productName,quantity,price) VALUES (?,?,?)");
        //   statement.setInt();
        statement.setString(1, productName);
        statement.setString(2, quantityString + "шт");
        statement.setString(3, moneyString + "p");// (p) добаляет Р в конце числа - типа рубль


        statement.executeUpdate();
    }

    void insertInto(String productName, String quantity, String price, int kodProduct) throws SQLException { // заполняет поля в базеданных
        NumberFormat formatter = NumberFormat.getInstance(); // конвертирует число в денежный формат
        String moneyString = formatter.format(Integer.parseInt(price));
        String quantityString = formatter.format(Integer.parseInt(quantity));

        PreparedStatement statement = ConnectSqlServer.con.prepareStatement("INSERT INTO" + " " + connectSqlServer.getselectedTable() + "(productName,quantity,price,kodProduct) VALUES (?,?,?,?)");
        //   statement.setInt();
        statement.setString(1, productName);
        statement.setString(2, quantityString + "шт");
        statement.setString(3, moneyString + "p");// (p) добаляет Р в конце числа - типа рубль
        statement.setInt(4, kodProduct);

        statement.executeUpdate();
    }

    void insertInto(String productName, String quantity, String price, String dateStart, String dateEnd,
                    int kodProduct) throws SQLException { // заполняет поля в базеданных
        NumberFormat formatter = NumberFormat.getInstance(); // конвертирует число в денежный формат
        String moneyString = formatter.format(Integer.parseInt(price));
        String quantityString = formatter.format(Integer.parseInt(quantity));


        PreparedStatement statement = ConnectSqlServer.con.prepareStatement("INSERT INTO" + " " + connectSqlServer.getselectedTable() + "(productName,quantity,price,dateStart,dateEnd,kodProduct) VALUES (?,?,?,?,?,?)");
        //   statement.setInt();
        statement.setString(1, productName);
        statement.setString(2, quantityString + "шт");
        statement.setString(3, moneyString + "p");// (p) добаляет Р в конце числа - типа рубль
        statement.setString(4, dateStart);
        statement.setString(5, dateEnd);
        statement.setInt(6, kodProduct);

        statement.executeUpdate();
    }


    void dropTable() throws SQLException, IOException { //удалить все денные из таблицы
        System.out.println("Вы уверены что хотите удалить таблицy? yes/no");
        String knowAct = bufferedReader.readLine();
        if (knowAct.equals("yes")) {
            ConnectSqlServer.stmt.executeUpdate("DROP TABLE" + " " + connectSqlServer.getselectedTable());
            System.out.println("Таблица удалена");
        } else {
            System.out.println("Таблица не удалена");
        }
    }


    void deleteAllDataFromTable() throws SQLException, IOException { // удалить все данные из таблицы
        System.out.println("Вы уверены что хотите все данные из таблицы? yes/no");
        String knowAct = bufferedReader.readLine();
        if (knowAct.equals("yes")) {
            ConnectSqlServer.stmt.executeUpdate("DELETE FROM" + " " + connectSqlServer.getselectedTable());
            System.out.println("Данные удалены");
        } else {
            System.out.println("Данные не удалены");
        }
    }

    void deleteFromTableId(int id) throws SQLException {
        ConnectSqlServer.stmt.executeUpdate("DELETE FROM" + " " + connectSqlServer.getselectedTable() + " " + "WHERE id = " + id);
    }

    void deleteFromTableName(String name) throws SQLException {
        ConnectSqlServer.stmt.executeUpdate("DELETE FROM" + " " + connectSqlServer.getselectedTable() + " " + "WHERE name = " + "'" + name + "'");
    }

    void deleteFromTableBefore(int firstValue, int secondValue) throws SQLException {
        ConnectSqlServer.stmt.executeUpdate("DELETE FROM" + " " + connectSqlServer.getselectedTable() + " " + "WHERE id BETWEEN " + firstValue + " AND " + secondValue);
    }

    void deleteFromTableIN() throws SQLException, IOException {
        try {
            int number = 0;
            while ((number = Integer.parseInt(bufferedReader.readLine())) != 0) {
                ConnectSqlServer.stmt.executeUpdate("DELETE FROM" + " " + connectSqlServer.getselectedTable() + " " + "WHERE id IN (" + number + ")");
            }
        } catch (NumberFormatException e) {

        }
    }

    void updateDataTableById(String columnName, String newValue, int idNumber) throws SQLException {
        ConnectSqlServer.stmt.executeUpdate("UPDATE" + " " + connectSqlServer.getselectedTable() + " SET " + columnName + " = " + "'" + newValue + "'" + " " + "WHERE id = " + idNumber);
    }

    void updateDataTableByName(String columnName, String newValue, String productName) throws SQLException {
        ConnectSqlServer.stmt.executeUpdate("UPDATE" + " " + connectSqlServer.getselectedTable() + " SET " + columnName + " = " + "'" + newValue + "'" + " " + "WHERE productname = '" + productName + "'");
    }

    void updateDataTableByProductKod(String columnName, String newValue, int kodNumber) throws SQLException {
        ConnectSqlServer.stmt.executeUpdate("UPDATE" + " " + connectSqlServer.getselectedTable() + " SET " + columnName + " = " + "'" + newValue + "'" + " " + "WHERE productKod = " + kodNumber);
    }

    void sortIdAutoIncrement() throws SQLException {
        ConnectSqlServer.stmt.executeUpdate("ALTER TABLE" + " " + connectSqlServer.getselectedTable() + " CHANGE id id INT NOT NULL");
        ConnectSqlServer.stmt.executeUpdate("ALTER TABLE" + " " + connectSqlServer.getselectedTable() + " CHANGE id id INT NOT NULL AUTO_INCREMENT");
    }

    public String getProductName(String productName) throws SQLException { // Ищет мемя продука через аргумент, и возвращает полученное название в SQL
        // System.out.println(productName.toUpperCase().indexOf(1));
        rs = ConnectSqlServer.stmt.executeQuery("SELECT productName FROM warehouse WHERE productName = '" + productName + "'");
        String getName = "";
        while (rs.next()) {
            getName = rs.getString("productName");
        }
        return getName;
    }

    public String getProductQuantity(String productName) throws SQLException { // Ищет дынные продука через аргумент, и возвращает полученное название в SQL
        rs = ConnectSqlServer.stmt.executeQuery("SELECT quantity FROM warehouse WHERE productName = '" + productName + "'");
        String getQuantity = "";
        while (rs.next()) {
            getQuantity = rs.getString("quantity");
        }
        return getQuantity;
    }

    public String getProductPrice(String productName) throws SQLException { // Ищет дынные продука через аргумент, и возвращает полученное название в SQL
        rs = ConnectSqlServer.stmt.executeQuery("SELECT price FROM warehouse WHERE productName = '" + productName + "'");
        String getPrice = "";
        while (rs.next()) {
            getPrice = rs.getString("price");
        }
        return getPrice;
    }

    public String getProductKod(String productName) throws SQLException { // Ищет дынные продука через аргумент, и возвращает полученное название в SQL
        rs = ConnectSqlServer.stmt.executeQuery("SELECT productKod FROM warehouse WHERE productName = '" + productName + "'");
        String getKod = "";
        while (rs.next()) {
            getKod = rs.getString("productKod");

        }
        return getKod;
    }


    void getFindByProductName(String productName) throws SQLException {
        rs = ConnectSqlServer.stmt.executeQuery("SELECT * FROM warehouse WHERE productName = '" + productName + "'");
        while (rs.next()) {
            String getProductName = rs.getString("productName");
            String getQuantity = rs.getString("quantity");
            String getPrice = rs.getString("price");
            int getProductKod = rs.getInt("productKod");
            System.out.println(getProductName + " " + getQuantity + " " + getPrice + " " + "kod " + getProductKod);
        }
    }

    // разберись с методоми

    static String getProducAlltData() throws SQLException {
        List<String> result = new ArrayList<>();
        rs = ConnectSqlServer.stmt.executeQuery("SELECT * FROM warehouse");
        while (rs.next()) {
            String getProductName = rs.getString("productName");
            String getQuantity = rs.getString("quantity");
            String getPrice = rs.getString("price");
            String getProductKod = rs.getString("productKod");
            System.out.println(getProductName + " " + getQuantity + " " + getPrice + " " + "kod " + getProductKod);
            result.add(getProductName + " " + getQuantity + " " + getPrice + " " + "kod " + getProductKod);
        }
        String s = String.join("\n", result);
        return s;
    }

    static String getProducAlltDataName() throws SQLException {
        List<String> result = new ArrayList<>();
        rs = ConnectSqlServer.stmt.executeQuery("SELECT * FROM warehouse");
        while (rs.next()) {
            String getProductName = rs.getString("productName");
            System.out.println(getProductName);
            result.add(getProductName);
        }
        String s = String.join("\n", result);
        return s;
    }

    void productChangeQuantity(int countBread) throws SQLException { // посмотри еще раз
        String productName = "молоко";
        rs = ConnectSqlServer.stmt.executeQuery("SELECT quantity FROM warehouse WHERE productName = '" + productName + "'");
        String newQuantity = "";
        while (rs.next()) {
            String getQiantityProduct = rs.getString("quantity");
            //System.out.println(getQiantityProduct);
            String isDigitValues = getIsDigit(getQiantityProduct);
            System.out.println(isDigitValues);
            int valueForArithmeticOperations = Integer.parseInt(isDigitValues) - countBread;
            newQuantity = String.valueOf(valueForArithmeticOperations) + " шт";
            //System.out.println(newQuantity);
        }
        ConnectSqlServer.stmt.executeUpdate("UPDATE warehouse SET quantity = '" + newQuantity + "' WHERE productName = '" + productName + "'");
    }


    public static String getIsDigit(String value) {
        String isDiginValue = "";
        char[] ch = value.toCharArray();
        for (int i = 0; i < ch.length; i++) {
            if (Character.isDigit(ch[i])) {
                isDiginValue += String.valueOf(ch[i]);
            }
        }
        return isDiginValue;
    }
}
