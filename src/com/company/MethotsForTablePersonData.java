package com.company;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.*;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;

public class MethotsForTablePersonData {
    static ResultSet rs;
    static ConnectSqlServer connectSqlServer = Main.connectSqlServer; // Присвоить объект как положено не получилось ХЗ почему.
    // "connectSqlServer.getSelectTableNameFill()" -  Получает имя таблицы из класса (RunSqlServer);
    static BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));

    void insertInto(String login, String password) throws SQLException { // заполняет поля в базеданных
        PreparedStatement statement = ConnectSqlServer.con.prepareStatement("INSERT INTO userdata " + "(login,password) VALUES (?,?)");
        //   statement.setInt();
        statement.setString(1, login);
        statement.setString(2, password);
        statement.executeUpdate();
    }

    void insertInto(String name, String surname, String position, String salary) throws SQLException { // заполняет поля в базеданных
        NumberFormat formatter = NumberFormat.getInstance(); // конвертирует число в денежный формат
        String moneyString = formatter.format(Integer.parseInt(salary));

        PreparedStatement statement = ConnectSqlServer.con.prepareStatement("INSERT INTO" + " " + connectSqlServer.getselectedTable() + "(name,surname,position,salary) VALUES (?,?,?,?)");
        //   statement.setInt();
        statement.setString(1, name);
        statement.setString(2, surname);
        statement.setString(3, salary);
        statement.setString(4, moneyString + "p"); // (p) добаляет Р в конце числа - типа рубль
        statement.executeUpdate();

        // stmt.executeUpdate("INSERT INTO `persondata VALUES (nama, surname))
    }

    void writeInMySqlData() throws SQLException, IOException {
        System.out.println("Input data");
        System.out.println("If you want to finish, then enter exit");
        while (true) {

            System.out.println("Input name");
            String name = bufferedReader.readLine();
            if (name.equals("exit"))
                break;

            System.out.println("Input surName");
            String surName = bufferedReader.readLine();
            if (surName.equals("exit"))
                break;

            System.out.println("Input workerSpecialty");
            String workerSpecialty = bufferedReader.readLine();
            if (workerSpecialty.equals("exit"))
                break;

            System.out.println("Input workerSalary");
            String workerSalary = bufferedReader.readLine();
            NumberFormat formatter = NumberFormat.getInstance();
            String moneyString = formatter.format(workerSalary);
            if (workerSalary.equals("exit"))
                break;

            if (name.isEmpty() && surName.isEmpty() && workerSpecialty.isEmpty() && workerSalary.isEmpty()) {
                break;
            }
            bufferedReader.close();
            insertInto(name, surName, workerSpecialty, moneyString + "p");

        }
    }

    public String getUserDate(String name) throws SQLException { // Ищет дынные продука через аргумент, и возвращает полученное название в SQL
        rs = ConnectSqlServer.stmt.executeQuery("SELECT * FROM userdata WHERE login = '" + name + "'");
        String getName = "";
        while (rs.next()) {
            getName = rs.getString("login");

        }
        return getName;
    }


    public HashMap<String, String> getAllUserDate() throws SQLException { // Ищет дынные продука через аргумент, и возвращает полученное название в SQL

        HashMap<String, String> map = new HashMap<>();
        rs = ConnectSqlServer.stmt.executeQuery("SELECT login,password FROM userdata");
        String getName = "";
        String getPass = "";

        while (rs.next()) {
            getName = rs.getString("login");
            getPass = rs.getString("password");
            map.put(getName, getPass);
        }
        return map;
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

    void updateDataInTable(String variableName, String newValue, int idNumber) throws SQLException {
        ConnectSqlServer.stmt.executeUpdate("UPDATE" + " " + connectSqlServer.getselectedTable() + " SET " + variableName + " = " + "'" + newValue + "'" + " " + "WHERE id = " + idNumber);
    }

    void sortIdAutoIncrement() throws SQLException {
        ConnectSqlServer.stmt.executeUpdate("ALTER TABLE" + " " + connectSqlServer.getselectedTable() + " CHANGE id id INT NOT NULL");
        ConnectSqlServer.stmt.executeUpdate("ALTER TABLE" + " " + connectSqlServer.getselectedTable() + " CHANGE id id INT NOT NULL AUTO_INCREMENT");
    }
}
