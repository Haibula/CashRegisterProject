package com.company;

import java.awt.*;
import java.io.*;
import java.sql.SQLException;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;
import java.util.ArrayList;


public class Main extends Application {
    static BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
    static ConnectSqlServer connectSqlServer = new ConnectSqlServer();
    static MethotsForTablePersonData personData = new MethotsForTablePersonData();
    static MethotsForTableWareHouse wareHouse = new MethotsForTableWareHouse();


    public static void main(String[] args) throws IOException, SQLException, AWTException {
        connectSqlServer.setLocalHostName("localhost");// названиме хоста
        connectSqlServer.setPortNumber("3306");// порт
        connectSqlServer.setDataBaseName("market"); // выбор базы данных для работы
        connectSqlServer.setLogin("root"); // логин
        connectSqlServer.setPassword("root");// пороль
        connectSqlServer.setselectedTable("warehouse");// выброная таблицы с которой будем работатьa
        connectSqlServer.mySqlRun(); //запускает скл с указанными данными

        //MethotsForTableWareHouse.checkKod();
        launch();

    }

    @Override
    public void start(Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(Main.class.getResource("fxmlFile/sample.fxml"));
        Scene scene = new Scene(fxmlLoader.load());
        stage.setTitle("СуперМаркет");
        stage.setScene(scene);
        stage.show();

    }

}

//Методы людей
//personData.writeInMySqlData();
//personData.insertInto("Sadu","Ibragimov","Gruz", "12000");
//personData.addArrayPeople();
//personData.createTable("warehouse(id int auto_INCREMENT,productName varchar(20),quantityProduct int, priceProduct int ,dateManufactureProduct date,dateEndProduct date");
//personData.dropTable();
//personData.dropTable("har");
//personData.deleteFromTableId(2);
//personData.deleteAllDataFromTable();
//personData.deleteFromTableBefore(17,23);
//personData.sortIdAutoIncrement();
//personData.updateDataInTable("id","4",12);
//personData.deleteFromTableName("habaibula");
//personData.deleteFromTableIN();
//personData.updateDataInTable("surname","Shahbano",1);


// Методы склада
//wareHouse.insertInto("Сок", "20", "55", 498662039);
//wareHouse.getFindByProductName("хлеб");
       /* System.out.println(wareHouse.getProductKod("хлеб"));
        System.out.println(wareHouse.getProductName("хлеб"));
        System.out.println(wareHouse.getProductPrice("хлеб"));
        System.out.println(wareHouse.getProductQuantity("хлеб"));
        System.out.println(wareHouse.getIsDigit(wareHouse.getProductPrice("хлеб")));*/
//wareHouse.updateDataTableById("productKod", "498693523", 5);
//wareHouse.updateDataTableByName("quantity", "65", "Сок");
//wareHouse.updateDataTableByProductKod("price", "20", 214121);
//wareHouse.updateDataTableByProductKod();
// wareHouse.deleteAllDataFromTable();
// wareHouse.deleteFromTableBefore();
// wareHouse.deleteFromTableId();
// wareHouse.deleteFromTableIN(); Допиши делеты и проверь, есть ли еще не использованные методы
// wareHouse.deleteFromTableName();
// Сделай обзор на методы
// wareHouse.getProducAlltData();



