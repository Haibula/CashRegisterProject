package com.company;

import javax.swing.plaf.basic.BasicButtonUI;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.Buffer;
import java.sql.*;
import java.util.Arrays;

public class ConnectSqlServer {
    public static Connection con;
    public static Statement stmt;
    public static ResultSet rs; // нужен для плучения данных из БД

    static Bread bread;
    static Sugar sugar;
    static Milk milk;
    static Eggs eggs;

    private String localHostName;
    private String portNumber;
    private String dataBaseName;
    private String login;
    private String password;
    private String selectedTable; // Выбрать таблицу для заполнения

    //сОЗДАЙ МЕТОДЫ Show

    void mySqlRun() {
        try {
            //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ithaba", "root", "root");
            con = DriverManager.getConnection("jdbc:mysql://" + localHostName + ":" + portNumber + "/" + dataBaseName, login, password);
            stmt = con.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    void createTable(String tableName) throws SQLException { //создать таблицу "заметка" пример - people(id INT, name varchar(20), PRIMARY KEY(ID))
        ConnectSqlServer.stmt.executeUpdate("CREATE TABLE" + " " + tableName);
    }

    void deleteSelectTable(String nameTable) throws SQLException, IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        System.out.println("Вы уверены что хотите удалить таблицy? yes/no");
        String knowAct = bufferedReader.readLine();
        if (knowAct.equals("yes")) {
            ConnectSqlServer.stmt.executeUpdate("DROP TABLE" + " " + nameTable);
            System.out.println("Таблица удалена");
        } else {
            System.out.println("Таблица не удалена");
        }
    }

    public void setLocalHostName(String localHostName) {
        this.localHostName = localHostName;
    }

    public void setPortNumber(String portNumber) {
        this.portNumber = portNumber;
    }

    public void setDataBaseName(String dataBaseName) {
        this.dataBaseName = dataBaseName;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getselectedTable() {
        return selectedTable;
    }

    public void setselectedTable(String selectedTable) {
        this.selectedTable = selectedTable;
    }


}
