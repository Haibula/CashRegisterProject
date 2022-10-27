package com.company;

import java.awt.*;
import java.awt.event.KeyEvent;
import java.io.IOException;
import java.net.URL;
import java.sql.SQLException;
import java.util.*;

import javafx.application.Application;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.scene.text.Text;
import javafx.scene.text.TextFlow;
import javafx.stage.Stage;

public class Sample2 {

    @FXML
    private ResourceBundle resources;

    @FXML
    private URL location;

    @FXML
    private Button check;

    @FXML
    private Button paid;

    @FXML
    private TextField kodProduct;

    @FXML
    private TextField resultSum;

    @FXML
    private TextArea outProductInfo;

    @FXML
    private TextArea warehouseData;

    @FXML
    private Button warehouse;

    @FXML
    private Button exit;

    @FXML
    private Button addProduct;

    @FXML
    private AnchorPane mainPlane;

    @FXML
    private Text privilege;
    @FXML
    private TextArea saportText;
    @FXML
    private Text inputKod;

    public Sample2() throws SQLException {
    }

    @FXML
    void initialize() throws AWTException, SQLException {

        saportText.setText(" Возьмите код здесь: \n 4665303537316\n 4607001779797\n 6941755212635\n 4031626710369");
        Thread thread = new Thread(new Runnable() {

            @Override
            public void run() {
                while (true) {
                    String a = kodProduct.getText();
                    if (a.equals("4665303537316") || a.equals("4607001779797") || a.equals("6941755212635") || a.equals("4031626710369")) {
                        try {
                            new Robot().keyPress(KeyEvent.VK_ENTER);
                        } catch (AWTException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        });
        thread.start();


        kodProduct.setOnAction(e -> {
            try {
                checkKod();
                kodProduct.clear();
                resultSum.setText(countGeneralSum + "р");
            } catch (SQLException | IOException ex) {
                ex.printStackTrace();
            }
        });

        paid.setOnAction(e -> {
            resultSum.setText(countGeneralSum + "р");
            System.out.println("Ваш чек!" + "\n" + "Общая cумма: " + countGeneralSum + "p");
            System.out.println();
            System.out.println("Склад обновился");
            try {
                milk.removeChangeQuantity(countMilk);
                eggs.removeChangeQuantity(countEggs);
                sugar.removeChangeQuantity(countSugar);
                bread.removeChangeQuantity(countBread);
                MethotsForTableWareHouse.getProducAlltData();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            FXMLLoader fxmlLoader = new FXMLLoader();
            fxmlLoader.setLocation(getClass().getResource("fxmlFile/sample4.fxml"));
            try {
                fxmlLoader.load();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
            Parent root = fxmlLoader.getRoot();
            Stage stage = new Stage();
            stage.setScene(new Scene(root));
            stage.showAndWait();
        });

        warehouse.setOnAction(e -> {
            try {
                warehouseData.setText(String.join("\n", MethotsForTableWareHouse.getProducAlltData()));
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        });

        exit.setOnAction(e -> {
            exit.getScene().getWindow().hide();
        });

        addProduct.setOnAction(e -> {
            FXMLLoader fxmlLoader = new FXMLLoader();
            fxmlLoader.setLocation(getClass().getResource("fxmlFile/sample3.fxml"));
            try {
                fxmlLoader.load();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
            Parent root = fxmlLoader.getRoot();
            Stage stage = new Stage();
            stage.setScene(new Scene(root));
            stage.showAndWait();
        });

        String login = Sample.login1;

        if (login != null && login.equals("haibula")) {
            privilege.setText("Admin");
        } else {
            privilege.setText("");
        }

        if (privilege.getText().equals("Admin")) {
            addProduct.setVisible(true);
        } else {
            addProduct.setVisible(false);
        }

    }

    Bread bread = new Bread();
    Milk milk = new Milk();
    Sugar sugar = new Sugar();
    Eggs eggs = new Eggs();


    static int countEggs = 0;
    static int countBread = 0;
    static int countSugar = 0;
    static int countMilk = 0;
    static int countGeneralSum = 0;


    static ArrayList<String> arr = new ArrayList<>();
    ArrayList<String> arr1 = new ArrayList<>();

    void checkKod() throws IOException, SQLException {  // сканит штрих код

        MethotsForTableWareHouse.countMilk = countMilk;
        MethotsForTableWareHouse.countBread = countBread;
        MethotsForTableWareHouse.countSugar = countSugar;
        MethotsForTableWareHouse.countEggs = countEggs;

        System.out.println("Введите код продукта");
        String scanKod = kodProduct.getText();

        switch (scanKod) {
            case ("4665303537316"): //Milk
                countMilk++;
                //milk.getSmallInfoProduct();
                arr.add(milk.getSmallInfoProduct());
                countGeneralSum += Integer.parseInt(MethotsForTableWareHouse.getIsDigit(milk.getPrice()));
                outProductInfo.setText(String.join("\n", arr));
                break;

            case ("4031626710369"): //Eggs
                countEggs++;
                //eggs.getSmallInfoProduct();
                arr.add(eggs.getSmallInfoProduct());
                countGeneralSum += Integer.parseInt(MethotsForTableWareHouse.getIsDigit(eggs.getPrice()));
                outProductInfo.setText(String.join("\n", arr));
                break;

            case ("6941755212635"): //Bread
                countBread++;
                //bread.getSmallInfoProduct();
                arr.add(bread.getSmallInfoProduct());
                countGeneralSum += Integer.parseInt(MethotsForTableWareHouse.getIsDigit(bread.getPrice()));
                outProductInfo.setText(String.join("\n", arr));
                break;

            case ("4607001779797"): //Sugar
                countSugar++;
                //sugar.getSmallInfoProduct();
                arr.add(sugar.getSmallInfoProduct());
                countGeneralSum += Integer.parseInt(MethotsForTableWareHouse.getIsDigit(sugar.getPrice()));
                outProductInfo.setText(String.join("\n", arr));
                break;

            default:
                System.out.println("Такого продукта нету");
        }
        System.out.println("Сумма: " + countGeneralSum + "p");
    }


}
